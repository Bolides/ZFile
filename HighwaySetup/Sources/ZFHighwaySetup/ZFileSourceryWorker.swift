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

protocol ZFileSourceryWorkerProtocol {
    /// sourcery:inline:DemoSourceryWorker.AutoGenerateProtocol
    
    
    /// sourcery:end
}

class ZFileSourceryWorker: ZFileSourceryWorkerProtocol, AutoGenerateProtocol {
    
    static let rootFolderPrefix: String = "--rootFolder:"
    
    let dependencies: SwiftPackageDependenciesProtocol
    var workers: [SourceryWorkerProtocol]?
    let sourceryBuilder: SourceryBuilderProtocol
    let dump: SwiftPackageDumpProtocol
    
    private let signPost: SignPostProtocol
    
    init(
        dependencies: SwiftPackageDependenciesProtocol,
        dump: SwiftPackageDumpProtocol,
        terminal: TerminalWorkerProtocol = TerminalWorker.shared,
        sourceryBuilderType: SourceryBuilderProtocol.Type = SourceryBuilder.self,
        systemExecutableProvider: SystemExecutableProviderProtocol = SystemExecutableProvider(),
        signPost: SignPostProtocol = SignPost.shared
    ) throws {
        self.signPost = signPost
        self.dependencies = dependencies
        self.dump = dump
        self.sourceryBuilder = try sourceryBuilderType.init(terminalWorker: terminal, disk: dependencies, signPost: signPost, systemExecutableProvider: systemExecutableProvider)
    }
    
    /// Best to do this on a background queue
    public func attemptCreateWorkers() throws  {
       
        let sourcerySequence = try ["ZFile", "ZFileMock"].map { productName in
            return try Sourcery(
                productName: productName,
                swiftPackageDependencies: dependencies,
                swiftPackageDump: dump,
                sourceryExecutable: try sourceryBuilder.attemptToBuildSourceryIfNeeded())
        }
        
        try sourcerySequence.forEach {
            signPost.verbose("""
                > \($0.sourceryYMLFile.path)
                
                ```yml
                \(try $0.sourceryYMLFile.readAsString())
                ```
                
                """
            )
        }
        
        self.workers =  try sourcerySequence.map { try SourceryWorker(sourcery: $0) }
        
    }

}
