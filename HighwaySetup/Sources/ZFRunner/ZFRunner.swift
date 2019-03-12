//
//  ZFRunner.swift
//  ZFRunner
//
//  Created by Stijn Willems on 12/03/2019.
//

import Foundation

import SourceryAutoProtocols

public protocol ZFRunnerProtocol: AutoMockable {
    // sourcery:inline:ZFRunner.AutoGenerateProtocol
    var sourcery: ZFileSourceryWorkerProtocol { get }
    var fail: Bool { get }

    func runSourcery() throws 
    func runTests() throws 
    // sourcery:end
}

public struct ZFRunner: ZFRunnerProtocol, AutoGenerateProtocol {
    
    public let sourcery: ZFileSourceryWorkerProtocol
    public var fail: Bool { return sourcery.fail }
    
    public init(sourcery: ZFileSourceryWorkerProtocol) {
        self.sourcery = sourcery
    }
    
    public func runSourcery() throws {
        try sourcery.attemptCreateWorkers()
        sourcery.attemptRunSourcery()
    }
    
    public func runTests() throws {
//
//        let testOutput = TestReport(output: try sourcery.terminal.runProcess(task.toProcess))
//        signPost.verbose("\(testOutput)")
//        signPost.message("🧪  Testing ✅")
    }
    
}
