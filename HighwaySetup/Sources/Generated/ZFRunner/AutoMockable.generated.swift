

// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import SignPost

let signPost = SignPost.shared
















// MARK: - ZFRunnerProtocolMock

open class ZFRunnerProtocolMock: ZFRunnerProtocol {

    public init() {}

  public  var sourcery: ZFileSourceryWorkerProtocol {
      get { return underlyingSourcery }
      set(value) { underlyingSourcery = value }
  }
  public  var underlyingSourcery: ZFileSourceryWorkerProtocol!
  public  var fail: Bool {
      get { return underlyingFail }
      set(value) { underlyingFail = value }
  }
  public  var underlyingFail: Bool = false


  // MARK: - <runSourcery> - parameters

  public var runSourceryThrowableError: Error?
  public var runSourceryCallsCount = 0
  public var runSourceryCalled: Bool {
    return runSourceryCallsCount > 0
  }

  // MARK: - <runSourcery> - closure mocks

  public var runSourceryClosure: (() throws  -> Void)? = nil



  // MARK: - <runSourcery> - method mocked

  open func runSourcery() throws {


      // <runSourcery> - Throwable method implementation

    if let error = runSourceryThrowableError {
        throw error
    }

      runSourceryCallsCount += 1

      // <runSourcery> - Void return mock implementation

        try runSourceryClosure?()

  }

  // MARK: - <runTests> - parameters

  public var runTestsThrowableError: Error?
  public var runTestsCallsCount = 0
  public var runTestsCalled: Bool {
    return runTestsCallsCount > 0
  }

  // MARK: - <runTests> - closure mocks

  public var runTestsClosure: (() throws  -> Void)? = nil



  // MARK: - <runTests> - method mocked

  open func runTests() throws {


      // <runTests> - Throwable method implementation

    if let error = runTestsThrowableError {
        throw error
    }

      runTestsCallsCount += 1

      // <runTests> - Void return mock implementation

        try runTestsClosure?()

  }
}


// MARK: - OBJECTIVE-C

