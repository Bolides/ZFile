import SourceryAutoProtocols
import AutomateZFile
import Foundation
import os
import FoundationGenericHelper


// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

















// MARK: - ZFileFolderWorkerProtocolMock

open class ZFileFolderWorkerProtocolMock: ZFileFolderWorkerProtocol {

    public init() {}

  public  var scrRoot: (folder: FolderProtocol, key: ZFileFolderWorker.Key) {
      get { return underlyingScrRoot }
      set(value) { underlyingScrRoot = value }
  }
  public  var underlyingScrRoot: (folder: FolderProtocol, key: ZFileFolderWorker.Key)!

}


// MARK: - OBJECTIVE-C

