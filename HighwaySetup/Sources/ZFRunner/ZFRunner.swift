//
//  ZFRunner.swift
//  ZFRunner
//
//  Created by Stijn Willems on 12/03/2019.
//

import Foundation

import SourceryAutoProtocols
import Arguments
import Terminal
import SignPost
import XCBuild

public protocol ZFRunnerProtocol: AutoMockable {
    // sourcery:inline:ZFRunner.AutoGenerateProtocol
    var sourcery: ZFileSourceryWorkerProtocol { get }
    var fail: Bool { get }
    var signPost: SignPostProtocol { get }

    func runSourcery() throws 
    func runTests() throws 
    // sourcery:end
}

public struct ZFRunner: ZFRunnerProtocol, AutoGenerateProtocol {
    
    public let sourcery: ZFileSourceryWorkerProtocol
    public var fail: Bool { return sourcery.fail }
    public let signPost: SignPostProtocol
    
    public init(sourcery: ZFileSourceryWorkerProtocol, signPost: SignPostProtocol = SignPost.shared) {
        self.sourcery = sourcery
        self.signPost = signPost
    }
    
    public func runSourcery() throws {
        try sourcery.attemptCreateWorkers()
        sourcery.attemptRunSourcery()
    }
    
    public func runTests() throws {

        signPost.message("🧪  Testing ...")

        let task = try Task(commandName: "swift")
        task.arguments = Arguments(["test"])
        
        let testOutput = TestReport(output: try sourcery.terminal.runProcess(task.toProcess))
        signPost.verbose("\(testOutput)")
        signPost.message("🧪  Testing ✅")
    }
    
}
