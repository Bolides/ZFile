import Arguments
import Errors
import Foundation
import GitHooks
import HighwayDispatch
import SignPost
import SourceryAutoProtocols
import SourceryWorker
import SwiftFormatWorker
import Terminal
import ZFRunner

// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import SignPost

let signPost = SignPost.shared

// MARK: - ZFRunnerProtocolMock

open class ZFRunnerProtocolMock: ZFRunnerProtocol
{
    public init() {}

    public var sourcery: ZFileSourceryWorkerProtocol
    {
        get { return underlyingSourcery }
        set(value) { underlyingSourcery = value }
    }

    public var underlyingSourcery: ZFileSourceryWorkerProtocol!
    public var fail: Bool
    {
        get { return underlyingFail }
        set(value) { underlyingFail = value }
    }

    public var underlyingFail: Bool = false
    public var signPost: SignPostProtocol
    {
        get { return underlyingSignPost }
        set(value) { underlyingSignPost = value }
    }

    public var underlyingSignPost: SignPostProtocol!
    public var swiftformat: SwiftFormatWorkerProtocol
    {
        get { return underlyingSwiftformat }
        set(value) { underlyingSwiftformat = value }
    }

    public var underlyingSwiftformat: SwiftFormatWorkerProtocol!
    public var gitHooks: GitHooksWorkerProtocol
    {
        get { return underlyingGitHooks }
        set(value) { underlyingGitHooks = value }
    }

    public var underlyingGitHooks: GitHooksWorkerProtocol!

    // MARK: - <runSourcery> - parameters

    public var runSourceryThrowableError: Error?
    public var runSourceryCallsCount = 0
    public var runSourceryCalled: Bool
    {
        return runSourceryCallsCount > 0
    }

    // MARK: - <runSourcery> - closure mocks

    public var runSourceryClosure: (() throws -> Void)?

    // MARK: - <runSourcery> - method mocked

    open func runSourcery() throws
    {
        // <runSourcery> - Throwable method implementation

        if let error = runSourceryThrowableError
        {
            throw error
        }

        runSourceryCallsCount += 1

        // <runSourcery> - Void return mock implementation

        try runSourceryClosure?()
    }

    // MARK: - <runTests> - parameters

    public var runTestsThrowableError: Error?
    public var runTestsCallsCount = 0
    public var runTestsCalled: Bool
    {
        return runTestsCallsCount > 0
    }

    // MARK: - <runTests> - closure mocks

    public var runTestsClosure: (() throws -> Void)?

    // MARK: - <runTests> - method mocked

    open func runTests() throws
    {
        // <runTests> - Throwable method implementation

        if let error = runTestsThrowableError
        {
            throw error
        }

        runTestsCallsCount += 1

        // <runTests> - Void return mock implementation

        try runTestsClosure?()
    }

    // MARK: - <runSwiftFormat> - parameters

    public var runSwiftFormatCallsCount = 0
    public var runSwiftFormatCalled: Bool
    {
        return runSwiftFormatCallsCount > 0
    }

    // MARK: - <runSwiftFormat> - closure mocks

    public var runSwiftFormatClosure: (() -> Void)?

    // MARK: - <runSwiftFormat> - method mocked

    open func runSwiftFormat()
    {
        runSwiftFormatCallsCount += 1

        // <runSwiftFormat> - Void return mock implementation

        runSwiftFormatClosure?()
    }

    // MARK: - <addTSHighWaySetupToGitHooks> - parameters

    public var addTSHighWaySetupToGitHooksThrowableError: Error?
    public var addTSHighWaySetupToGitHooksCallsCount = 0
    public var addTSHighWaySetupToGitHooksCalled: Bool
    {
        return addTSHighWaySetupToGitHooksCallsCount > 0
    }

    // MARK: - <addTSHighWaySetupToGitHooks> - closure mocks

    public var addTSHighWaySetupToGitHooksClosure: (() throws -> Void)?

    // MARK: - <addTSHighWaySetupToGitHooks> - method mocked

    open func addTSHighWaySetupToGitHooks() throws
    {
        // <addTSHighWaySetupToGitHooks> - Throwable method implementation

        if let error = addTSHighWaySetupToGitHooksThrowableError
        {
            throw error
        }

        addTSHighWaySetupToGitHooksCallsCount += 1

        // <addTSHighWaySetupToGitHooks> - Void return mock implementation

        try addTSHighWaySetupToGitHooksClosure?()
    }
}

// MARK: - ZFileSourceryWorkerProtocolMock

open class ZFileSourceryWorkerProtocolMock: ZFileSourceryWorkerProtocol
{
    public init() {}

    public static var queue: HighwayDispatchProtocol
    {
        get { return underlyingQueue }
        set(value) { underlyingQueue = value }
    }

    public static var underlyingQueue: HighwayDispatchProtocol!
    public var fail: Bool
    {
        get { return underlyingFail }
        set(value) { underlyingFail = value }
    }

    public var underlyingFail: Bool = false
    public var dependencies: SwiftPackageDependenciesProtocol
    {
        get { return underlyingDependencies }
        set(value) { underlyingDependencies = value }
    }

    public var underlyingDependencies: SwiftPackageDependenciesProtocol!
    public var sourceryBuilder: SourceryBuilderProtocol
    {
        get { return underlyingSourceryBuilder }
        set(value) { underlyingSourceryBuilder = value }
    }

    public var underlyingSourceryBuilder: SourceryBuilderProtocol!
    public var dump: SwiftPackageDumpProtocol
    {
        get { return underlyingDump }
        set(value) { underlyingDump = value }
    }

    public var underlyingDump: SwiftPackageDumpProtocol!
    public var terminal: TerminalWorkerProtocol
    {
        get { return underlyingTerminal }
        set(value) { underlyingTerminal = value }
    }

    public var underlyingTerminal: TerminalWorkerProtocol!
    public var dispatchGroup: DispatchGroup
    {
        get { return underlyingDispatchGroup }
        set(value) { underlyingDispatchGroup = value }
    }

    public var underlyingDispatchGroup: DispatchGroup!

    // MARK: - <init> - parameters

    public var initDependenciesDumpDispatchGroupQueueTerminalSourceryBuilderTypeSystemExecutableProviderSignPostThrowableError: Error?
    public var initDependenciesDumpDispatchGroupQueueTerminalSourceryBuilderTypeSystemExecutableProviderSignPostReceivedArguments: (dependencies: SwiftPackageDependenciesProtocol, dump: SwiftPackageDumpProtocol, dispatchGroup: DispatchGroup, queue: HighwayDispatchProtocol, terminal: TerminalWorkerProtocol, sourceryBuilderType: SourceryBuilderProtocol.Type, systemExecutableProvider: SystemExecutableProviderProtocol, signPost: SignPostProtocol)?

    // MARK: - <init> - closure mocks

    public var initDependenciesDumpDispatchGroupQueueTerminalSourceryBuilderTypeSystemExecutableProviderSignPostClosure: ((SwiftPackageDependenciesProtocol, SwiftPackageDumpProtocol, DispatchGroup, HighwayDispatchProtocol, TerminalWorkerProtocol, SourceryBuilderProtocol.Type, SystemExecutableProviderProtocol, SignPostProtocol) throws -> Void)?

    // MARK: - <init> - initializer mocked

    public required init(dependencies: SwiftPackageDependenciesProtocol, dump: SwiftPackageDumpProtocol, dispatchGroup: DispatchGroup, queue: HighwayDispatchProtocol, terminal: TerminalWorkerProtocol, sourceryBuilderType: SourceryBuilderProtocol.Type, systemExecutableProvider: SystemExecutableProviderProtocol, signPost: SignPostProtocol) throws
    {
        initDependenciesDumpDispatchGroupQueueTerminalSourceryBuilderTypeSystemExecutableProviderSignPostReceivedArguments = (dependencies: dependencies, dump: dump, dispatchGroup: dispatchGroup, queue: queue, terminal: terminal, sourceryBuilderType: sourceryBuilderType, systemExecutableProvider: systemExecutableProvider, signPost: signPost)
        try? initDependenciesDumpDispatchGroupQueueTerminalSourceryBuilderTypeSystemExecutableProviderSignPostClosure?(dependencies, dump, dispatchGroup, queue, terminal, sourceryBuilderType, systemExecutableProvider, signPost)
    }

    // MARK: - <attemptCreateWorkers> - parameters

    public var attemptCreateWorkersThrowableError: Error?
    public var attemptCreateWorkersCallsCount = 0
    public var attemptCreateWorkersCalled: Bool
    {
        return attemptCreateWorkersCallsCount > 0
    }

    // MARK: - <attemptCreateWorkers> - closure mocks

    public var attemptCreateWorkersClosure: (() throws -> Void)?

    // MARK: - <attemptCreateWorkers> - method mocked

    open func attemptCreateWorkers() throws
    {
        // <attemptCreateWorkers> - Throwable method implementation

        if let error = attemptCreateWorkersThrowableError
        {
            throw error
        }

        attemptCreateWorkersCallsCount += 1

        // <attemptCreateWorkers> - Void return mock implementation

        try attemptCreateWorkersClosure?()
    }

    // MARK: - <attemptRunSourcery> - parameters

    public var attemptRunSourceryCallsCount = 0
    public var attemptRunSourceryCalled: Bool
    {
        return attemptRunSourceryCallsCount > 0
    }

    // MARK: - <attemptRunSourcery> - closure mocks

    public var attemptRunSourceryClosure: (() -> Void)?

    // MARK: - <attemptRunSourcery> - method mocked

    open func attemptRunSourcery()
    {
        attemptRunSourceryCallsCount += 1

        // <attemptRunSourcery> - Void return mock implementation

        attemptRunSourceryClosure?()
    }
}

// MARK: - OBJECTIVE-C
