import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ZFile_DoozMenTests.allTests),
    ]
}
#endif