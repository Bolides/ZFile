//
//  DemoSourceryWorker.swift
//  Automate
//
//  Created by Stijn on 16/12/2018.
//  Copyright © 2018 dooz. All rights reserved.
//

import Foundation
import SourceryAutoProtocols
import ZFile
import Terminal
import SourceryWorker
import SignPost
import Arguments
import HighwayDispatch

public protocol ZFileSourceryWorkerProtocol {
    // sourcery:inline:ZFileSourceryWorker.AutoGenerateProtocol
    static var queue: HighwayDispatchProtocol { get }
    var fail: Bool { get set }
    var dependencies: SwiftPackageDependenciesProtocol { get }
    var sourceryBuilder: SourceryBuilderProtocol { get }
    var dump: SwiftPackageDumpProtocol { get }

    init(
      dependencies: SwiftPackageDependenciesProtocol,
      dump: SwiftPackageDumpProtocol,
      dispatchGroup: DispatchGroup,
      queue: HighwayDispatchProtocol,
      terminal: TerminalWorkerProtocol,
      sourceryBuilderType: SourceryBuilderProtocol.Type,
      systemExecutableProvider: SystemExecutableProviderProtocol,
      signPost: SignPostProtocol
    )  throws
    func attemptCreateWorkers() throws 
    func attemptRunSourcery()
    // sourcery:end
}

public class ZFileSourceryWorker: ZFileSourceryWorkerProtocol, AutoGenerateProtocol {
    
    public static let queue: HighwayDispatchProtocol = DispatchQueue(label: "be.dooz.zfile.sourcery")
    
    public var fail: Bool = false
    public let dependencies: SwiftPackageDependenciesProtocol
    public let sourceryBuilder: SourceryBuilderProtocol
    public let dump: SwiftPackageDumpProtocol
    
    private let signPost: SignPostProtocol
    private var workers: [SourceryWorkerProtocol]?
    private let dispatchGroup: DispatchGroup
    private let queue: HighwayDispatchProtocol
    private let terminal: TerminalWorkerProtocol
    
    // sourcery:includeInitInProtocol
    required public init(
        dependencies: SwiftPackageDependenciesProtocol,
        dump: SwiftPackageDumpProtocol,
        dispatchGroup: DispatchGroup,
        queue: HighwayDispatchProtocol = ZFileSourceryWorker.queue,
        terminal: TerminalWorkerProtocol = TerminalWorker.shared,
        sourceryBuilderType: SourceryBuilderProtocol.Type = SourceryBuilder.self,
        systemExecutableProvider: SystemExecutableProviderProtocol = SystemExecutableProvider(),
        signPost: SignPostProtocol = SignPost.shared
    ) throws {
        self.signPost = signPost
        self.dependencies = dependencies
        self.dump = dump
        self.sourceryBuilder = try sourceryBuilderType.init(terminalWorker: terminal, disk: dependencies, signPost: signPost, systemExecutableProvider: systemExecutableProvider)
        self.queue = queue
        self.dispatchGroup = dispatchGroup
        self.terminal = terminal
    }
    
    public func attemptCreateWorkers() throws  {
       
        let sourceryExecutable = try sourceryBuilder.attemptToBuildSourceryIfNeeded()
        
        let sourcerySequence = try dump.products.map { product in
            return try Sourcery(
                productName: product.name,
                swiftPackageDependencies: dependencies,
                swiftPackageDump: dump,
                sourceryExecutable: sourceryExecutable)
        }
        
        self.workers = try sourcerySequence.map { try SourceryWorker(sourcery: $0, terminalWorker: terminal, signPost: signPost, queue: queue) }
        
    }
    
    public func attemptRunSourcery() {
        
        queue.async {
            self.workers?.forEach { worker in
                self.dispatchGroup.enter()
                self.signPost.message("🧙🏻‍♂️ \(worker.sourcery.name)")
                
                worker.attempt {
                    do {
                        let output = try $0()
                        self.signPost.verbose("\(output.joined(separator: "\n"))")
                        self.signPost.message("🧙🏻‍♂️ \(worker.sourcery.name) ✅")

                        self.dispatchGroup.leave()
                    } catch {
                        self.fail = true
                        self.signPost.error("\(error)")
                        self.signPost.message("🧙🏻‍♂️ \(worker.sourcery.name) ❌")

                        self.dispatchGroup.leave()
                    }
                }
            }
        }
        dispatchGroup.leave()
    }

}
