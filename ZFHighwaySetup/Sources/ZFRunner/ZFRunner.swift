//
//  ZFRunner.swift
//  ZFRunner
//
//  Created by Stijn Willems on 12/03/2019.
//

import Foundation

import Arguments
import GitHooks
import SignPost
import SourceryAutoProtocols
import SwiftFormatWorker
import Terminal
import XCBuild

public protocol ZFRunnerProtocol: AutoMockable
{
    // sourcery:inline:ZFRunner.AutoGenerateProtocol
    var sourcery: ZFileSourceryWorkerProtocol { get }
    var fail: Bool { get }
    var signPost: SignPostProtocol { get }
    var swiftformat: SwiftFormatWorkerProtocol { get }
    var gitHooks: GitHooksWorkerProtocol { get }

    func runSourcery() throws
    func runTests() throws
    func runSwiftFormat()
    func addTSHighWaySetupToGitHooks() throws
    // sourcery:end
}

public struct ZFRunner: ZFRunnerProtocol, AutoGenerateProtocol
{
    public let sourcery: ZFileSourceryWorkerProtocol
    public var fail: Bool { return sourcery.fail }
    public let signPost: SignPostProtocol
    public let swiftformat: SwiftFormatWorkerProtocol
    public let gitHooks: GitHooksWorkerProtocol

    public init(
        sourcery: ZFileSourceryWorkerProtocol,
        swiftformat: SwiftFormatWorkerProtocol,
        gitHooks: GitHooksWorkerProtocol,
        signPost: SignPostProtocol = SignPost.shared
    )
    {
        self.sourcery = sourcery
        self.signPost = signPost
        self.swiftformat = swiftformat
        self.gitHooks = gitHooks
    }

    public func runSourcery() throws
    {
        try sourcery.attemptCreateWorkers()
        sourcery.attemptRunSourcery()
    }

    public func runTests() throws
    {
        signPost.message("🧪  Testing ...")

        do
        {
            let task = try Task(commandName: "swift")
            task.arguments = Arguments(["test"])

            let testOutput = TestReport(output: try sourcery.terminal.runProcess(task.toProcess))
            signPost.verbose("\(testOutput)")
            signPost.message("🧪  Testing ✅")
        }
        catch let TerminalWorker.Error.unknownTask(errorOutput: output)
        {
            let testOutput = TestReport(output: output)
            signPost.error("\(testOutput)")
            signPost.message("🧪  Testing ❌")
        }
    }

    public func runSwiftFormat()
    {
        signPost.message("🧹 swiftformat started ...")
        sourcery.dispatchGroup.enter()
        swiftformat.attempt
        { syncOutput in
            do
            {
                try syncOutput()
                self.signPost.message("🧹 swiftformat ✅")
                self.sourcery.dispatchGroup.leave()
            }
            catch
            {
                self.signPost.error("\(error)")
                self.signPost.message("🧹 swiftformat ❌")

                self.sourcery.dispatchGroup.leave()
                exit(EXIT_FAILURE)
            }
        }
    }

    public func addTSHighWaySetupToGitHooks() throws
    {
        try gitHooks.addPrePushToGitHooks()
    }
}
