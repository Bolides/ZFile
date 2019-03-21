import Foundation
import ZFile


// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

















// MARK: - BundleProtocolMock

open class BundleProtocolMock: BundleProtocol {

    public init() {}



  // MARK: - <fileforResource> - parameters

  public var fileforResourceWithOfThrowableError: Error?
  public var fileforResourceWithOfCallsCount = 0
  public var fileforResourceWithOfCalled: Bool {
    return fileforResourceWithOfCallsCount > 0
  }
  public var fileforResourceWithOfReceivedArguments: (name: (String), type: (String))?
  public var fileforResourceWithOfReturnValue: FileProtocol?

  // MARK: - <fileforResource> - closure mocks

  public var fileforResourceWithOfClosure: ((String, String) throws  -> FileProtocol)? = nil



  // MARK: - <fileforResource> - method mocked

  open func fileforResource(with name: String, of type: String) throws -> FileProtocol {


      // <fileforResource> - Throwable method implementation

    if let error = fileforResourceWithOfThrowableError {
        throw error
    }

      fileforResourceWithOfCallsCount += 1
      fileforResourceWithOfReceivedArguments = (name: name, type: type)

      // <fileforResource> - Return Value mock implementation

      guard let closureReturn = fileforResourceWithOfClosure else {
          guard let returnValue = fileforResourceWithOfReturnValue else {
              let message = "No returnValue implemented for fileforResourceWithOfClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(name, type)
  }

  // MARK: - <string> - parameters

  public var stringForThrowableError: Error?
  public var stringForCallsCount = 0
  public var stringForCalled: Bool {
    return stringForCallsCount > 0
  }
  public var stringForReceivedKey: AnyRawRepresentable<String>?
  public var stringForReturnValue: String?

  // MARK: - <string> - closure mocks

  public var stringForClosure: ((AnyRawRepresentable<String>) throws  -> String)? = nil



  // MARK: - <string> - method mocked

  open func string(for key: AnyRawRepresentable<String>) throws -> String {


      // <string> - Throwable method implementation

    if let error = stringForThrowableError {
        throw error
    }

      stringForCallsCount += 1
      stringForReceivedKey = key

      // <string> - Return Value mock implementation

      guard let closureReturn = stringForClosure else {
          guard let returnValue = stringForReturnValue else {
              let message = "No returnValue implemented for stringForClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement String

              throw error
          }
          return returnValue
      }

      return try closureReturn(key)
  }
}


// MARK: - FileProtocolMock

open class FileProtocolMock: FileProtocol {


  public  var localizedDate: String {
      get { return underlyingLocalizedDate }
      set(value) { underlyingLocalizedDate = value }
  }
  public  var underlyingLocalizedDate: String = "AutoMockable filled value"
  public  var path: String {
      get { return underlyingPath }
      set(value) { underlyingPath = value }
  }
  public  var underlyingPath: String = "AutoMockable filled value"
  public  var name: String {
      get { return underlyingName }
      set(value) { underlyingName = value }
  }
  public  var underlyingName: String = "AutoMockable filled value"
  public  var nameExcludingExtension: String {
      get { return underlyingNameExcludingExtension }
      set(value) { underlyingNameExcludingExtension = value }
  }
  public  var underlyingNameExcludingExtension: String = "AutoMockable filled value"
  public var `extension`: String?
  public  var modificationDate: Date {
      get { return underlyingModificationDate }
      set(value) { underlyingModificationDate = value }
  }
  public  var underlyingModificationDate: Date = Date()
  public  var description: String {
      get { return underlyingDescription }
      set(value) { underlyingDescription = value }
  }
  public  var underlyingDescription: String = "AutoMockable filled value"


  // MARK: - <readAllLines> - parameters

  public var readAllLinesThrowableError: Error?
  public var readAllLinesCallsCount = 0
  public var readAllLinesCalled: Bool {
    return readAllLinesCallsCount > 0
  }
  public var readAllLinesReturnValue: [String]?

  // MARK: - <readAllLines> - closure mocks

  public var readAllLinesClosure: (() throws  -> [String])? = nil



  // MARK: - <readAllLines> - method mocked

  open func readAllLines() throws -> [String] {


      // <readAllLines> - Throwable method implementation

    if let error = readAllLinesThrowableError {
        throw error
    }

      readAllLinesCallsCount += 1

      // <readAllLines> - Return Value mock implementation

      guard let closureReturn = readAllLinesClosure else {
          guard let returnValue = readAllLinesReturnValue else {
              let message = "No returnValue implemented for readAllLinesClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement [String]

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <read> - parameters

  public var readThrowableError: Error?
  public var readCallsCount = 0
  public var readCalled: Bool {
    return readCallsCount > 0
  }
  public var readReturnValue: Data?

  // MARK: - <read> - closure mocks

  public var readClosure: (() throws  -> Data)? = nil



  // MARK: - <read> - method mocked

  open func read() throws -> Data {


      // <read> - Throwable method implementation

    if let error = readThrowableError {
        throw error
    }

      readCallsCount += 1

      // <read> - Return Value mock implementation

      guard let closureReturn = readClosure else {
          guard let returnValue = readReturnValue else {
              let message = "No returnValue implemented for readClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement Data

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <readAsString> - parameters

  public var readAsStringThrowableError: Error?
  public var readAsStringCallsCount = 0
  public var readAsStringCalled: Bool {
    return readAsStringCallsCount > 0
  }
  public var readAsStringReturnValue: String?

  // MARK: - <readAsString> - closure mocks

  public var readAsStringClosure: (() throws  -> String)? = nil



  // MARK: - <readAsString> - method mocked

  open func readAsString() throws -> String {


      // <readAsString> - Throwable method implementation

    if let error = readAsStringThrowableError {
        throw error
    }

      readAsStringCallsCount += 1

      // <readAsString> - Return Value mock implementation

      guard let closureReturn = readAsStringClosure else {
          guard let returnValue = readAsStringReturnValue else {
              let message = "No returnValue implemented for readAsStringClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement String

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <readAsInt> - parameters

  public var readAsIntThrowableError: Error?
  public var readAsIntCallsCount = 0
  public var readAsIntCalled: Bool {
    return readAsIntCallsCount > 0
  }
  public var readAsIntReturnValue: Int?

  // MARK: - <readAsInt> - closure mocks

  public var readAsIntClosure: (() throws  -> Int)? = nil



  // MARK: - <readAsInt> - method mocked

  open func readAsInt() throws -> Int {


      // <readAsInt> - Throwable method implementation

    if let error = readAsIntThrowableError {
        throw error
    }

      readAsIntCallsCount += 1

      // <readAsInt> - Return Value mock implementation

      guard let closureReturn = readAsIntClosure else {
          guard let returnValue = readAsIntReturnValue else {
              let message = "No returnValue implemented for readAsIntClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement Int

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <write> - parameters

  public var writeDataThrowableError: Error?
  public var writeDataCallsCount = 0
  public var writeDataCalled: Bool {
    return writeDataCallsCount > 0
  }
  public var writeDataReceivedData: Data?

  // MARK: - <write> - closure mocks

  public var writeDataClosure: ((Data) throws  -> Void)? = nil



  // MARK: - <write> - method mocked

  open func write(data: Data) throws {


      // <write> - Throwable method implementation

    if let error = writeDataThrowableError {
        throw error
    }

      writeDataCallsCount += 1
      writeDataReceivedData = data

      // <write> - Void return mock implementation

        try writeDataClosure?(data)

  }

  // MARK: - <write> - parameters

  public var writeStringThrowableError: Error?
  public var writeStringCallsCount = 0
  public var writeStringCalled: Bool {
    return writeStringCallsCount > 0
  }
  public var writeStringReceivedString: String?

  // MARK: - <write> - closure mocks

  public var writeStringClosure: ((String) throws  -> Void)? = nil



  // MARK: - <write> - method mocked

  open func write(string: String) throws {


      // <write> - Throwable method implementation

    if let error = writeStringThrowableError {
        throw error
    }

      writeStringCallsCount += 1
      writeStringReceivedString = string

      // <write> - Void return mock implementation

        try writeStringClosure?(string)

  }

  // MARK: - <write> - parameters

  public var writeStringEncodingThrowableError: Error?
  public var writeStringEncodingCallsCount = 0
  public var writeStringEncodingCalled: Bool {
    return writeStringEncodingCallsCount > 0
  }
  public var writeStringEncodingReceivedArguments: (string: (String), encoding: (String.Encoding))?

  // MARK: - <write> - closure mocks

  public var writeStringEncodingClosure: ((String, String.Encoding) throws  -> Void)? = nil



  // MARK: - <write> - method mocked

  open func write(string: String, encoding: String.Encoding) throws {


      // <write> - Throwable method implementation

    if let error = writeStringEncodingThrowableError {
        throw error
    }

      writeStringEncodingCallsCount += 1
      writeStringEncodingReceivedArguments = (string: string, encoding: encoding)

      // <write> - Void return mock implementation

        try writeStringEncodingClosure?(string, encoding)

  }

  // MARK: - <append> - parameters

  public var appendDataThrowableError: Error?
  public var appendDataCallsCount = 0
  public var appendDataCalled: Bool {
    return appendDataCallsCount > 0
  }
  public var appendDataReceivedData: Data?

  // MARK: - <append> - closure mocks

  public var appendDataClosure: ((Data) throws  -> Void)? = nil



  // MARK: - <append> - method mocked

  open func append(data: Data) throws {


      // <append> - Throwable method implementation

    if let error = appendDataThrowableError {
        throw error
    }

      appendDataCallsCount += 1
      appendDataReceivedData = data

      // <append> - Void return mock implementation

        try appendDataClosure?(data)

  }

  // MARK: - <append> - parameters

  public var appendStringThrowableError: Error?
  public var appendStringCallsCount = 0
  public var appendStringCalled: Bool {
    return appendStringCallsCount > 0
  }
  public var appendStringReceivedString: String?

  // MARK: - <append> - closure mocks

  public var appendStringClosure: ((String) throws  -> Void)? = nil



  // MARK: - <append> - method mocked

  open func append(string: String) throws {


      // <append> - Throwable method implementation

    if let error = appendStringThrowableError {
        throw error
    }

      appendStringCallsCount += 1
      appendStringReceivedString = string

      // <append> - Void return mock implementation

        try appendStringClosure?(string)

  }

  // MARK: - <append> - parameters

  public var appendStringEncodingThrowableError: Error?
  public var appendStringEncodingCallsCount = 0
  public var appendStringEncodingCalled: Bool {
    return appendStringEncodingCallsCount > 0
  }
  public var appendStringEncodingReceivedArguments: (string: (String), encoding: (String.Encoding))?

  // MARK: - <append> - closure mocks

  public var appendStringEncodingClosure: ((String, String.Encoding) throws  -> Void)? = nil



  // MARK: - <append> - method mocked

  open func append(string: String, encoding: String.Encoding) throws {


      // <append> - Throwable method implementation

    if let error = appendStringEncodingThrowableError {
        throw error
    }

      appendStringEncodingCallsCount += 1
      appendStringEncodingReceivedArguments = (string: string, encoding: encoding)

      // <append> - Void return mock implementation

        try appendStringEncodingClosure?(string, encoding)

  }

  // MARK: - <copy> - parameters

  public var copyToThrowableError: Error?
  public var copyToCallsCount = 0
  public var copyToCalled: Bool {
    return copyToCallsCount > 0
  }
  public var copyToReceivedFolder: FolderProtocol?
  public var copyToReturnValue: FileProtocol?

  // MARK: - <copy> - closure mocks

  public var copyToClosure: ((FolderProtocol) throws  -> FileProtocol)? = nil



  // MARK: - <copy> - method mocked

  open func copy(to folder: FolderProtocol) throws -> FileProtocol {


      // <copy> - Throwable method implementation

    if let error = copyToThrowableError {
        throw error
    }

      copyToCallsCount += 1
      copyToReceivedFolder = folder

      // <copy> - Return Value mock implementation

      guard let closureReturn = copyToClosure else {
          guard let returnValue = copyToReturnValue else {
              let message = "No returnValue implemented for copyToClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(folder)
  }

  // MARK: - <init> - parameters

  public var initThrowableError: Error?

  // MARK: - <init> - closure mocks

  public var initClosure: (() throws  -> Void)? = nil


  // MARK: - <init> - initializer mocked

  public required init() throws {
     try? initClosure?()
  }


  // MARK: - <init> - parameters

  public var initPathThrowableError: Error?
  public var initPathReceivedPath: String?

  // MARK: - <init> - closure mocks

  public var initPathClosure: ((String) throws  -> Void)? = nil


  // MARK: - <init> - initializer mocked

  public required init(path: String) throws {
      initPathReceivedPath = path
     try? initPathClosure?(path)
  }


  // MARK: - <init?> - parameters

  public var initPossbilyInvalidPathReceivedPossbilyInvalidPath: String?

  // MARK: - <init?> - closure mocks

  public var initPossbilyInvalidPathClosure: ((String)  -> Void)? = nil


  // MARK: - <init?> - initializer mocked

  public required init?(possbilyInvalidPath: String) {
      initPossbilyInvalidPathReceivedPossbilyInvalidPath = possbilyInvalidPath
    initPossbilyInvalidPathClosure?(possbilyInvalidPath)
  }


  // MARK: - <parentFolder> - parameters

  public var parentFolderThrowableError: Error?
  public var parentFolderCallsCount = 0
  public var parentFolderCalled: Bool {
    return parentFolderCallsCount > 0
  }
  public var parentFolderReturnValue: FolderProtocol?

  // MARK: - <parentFolder> - closure mocks

  public var parentFolderClosure: (() throws  -> FolderProtocol)? = nil



  // MARK: - <parentFolder> - method mocked

  open func parentFolder() throws -> FolderProtocol {


      // <parentFolder> - Throwable method implementation

    if let error = parentFolderThrowableError {
        throw error
    }

      parentFolderCallsCount += 1

      // <parentFolder> - Return Value mock implementation

      guard let closureReturn = parentFolderClosure else {
          guard let returnValue = parentFolderReturnValue else {
              let message = "No returnValue implemented for parentFolderClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <rename> - parameters

  public var renameToThrowableError: Error?
  public var renameToCallsCount = 0
  public var renameToCalled: Bool {
    return renameToCallsCount > 0
  }
  public var renameToReceivedNewName: String?

  // MARK: - <rename> - closure mocks

  public var renameToClosure: ((String) throws  -> Void)? = nil



  // MARK: - <rename> - method mocked

  open func rename(to newName: String) throws {


      // <rename> - Throwable method implementation

    if let error = renameToThrowableError {
        throw error
    }

      renameToCallsCount += 1
      renameToReceivedNewName = newName

      // <rename> - Void return mock implementation

        try renameToClosure?(newName)

  }

  // MARK: - <rename> - parameters

  public var renameToKeepExtensionThrowableError: Error?
  public var renameToKeepExtensionCallsCount = 0
  public var renameToKeepExtensionCalled: Bool {
    return renameToKeepExtensionCallsCount > 0
  }
  public var renameToKeepExtensionReceivedArguments: (newName: (String), keepExtension: (Bool))?

  // MARK: - <rename> - closure mocks

  public var renameToKeepExtensionClosure: ((String, Bool) throws  -> Void)? = nil



  // MARK: - <rename> - method mocked

  open func rename(to newName: String, keepExtension: Bool) throws {


      // <rename> - Throwable method implementation

    if let error = renameToKeepExtensionThrowableError {
        throw error
    }

      renameToKeepExtensionCallsCount += 1
      renameToKeepExtensionReceivedArguments = (newName: newName, keepExtension: keepExtension)

      // <rename> - Void return mock implementation

        try renameToKeepExtensionClosure?(newName, keepExtension)

  }

  // MARK: - <move> - parameters

  public var moveToThrowableError: Error?
  public var moveToCallsCount = 0
  public var moveToCalled: Bool {
    return moveToCallsCount > 0
  }
  public var moveToReceivedNewParent: Folder?

  // MARK: - <move> - closure mocks

  public var moveToClosure: ((Folder) throws  -> Void)? = nil



  // MARK: - <move> - method mocked

  open func move(to newParent: Folder) throws {


      // <move> - Throwable method implementation

    if let error = moveToThrowableError {
        throw error
    }

      moveToCallsCount += 1
      moveToReceivedNewParent = newParent

      // <move> - Void return mock implementation

        try moveToClosure?(newParent)

  }

  // MARK: - <delete> - parameters

  public var deleteThrowableError: Error?
  public var deleteCallsCount = 0
  public var deleteCalled: Bool {
    return deleteCallsCount > 0
  }

  // MARK: - <delete> - closure mocks

  public var deleteClosure: (() throws  -> Void)? = nil



  // MARK: - <delete> - method mocked

  open func delete() throws {


      // <delete> - Throwable method implementation

    if let error = deleteThrowableError {
        throw error
    }

      deleteCallsCount += 1

      // <delete> - Void return mock implementation

        try deleteClosure?()

  }
}


// MARK: - FileSystemProtocolMock

open class FileSystemProtocolMock: FileSystemProtocol {


  public  var temporaryFolder: Folder {
      get { return underlyingTemporaryFolder }
      set(value) { underlyingTemporaryFolder = value }
  }
  public  var underlyingTemporaryFolder: Folder!
  public  var homeFolder: Folder {
      get { return underlyingHomeFolder }
      set(value) { underlyingHomeFolder = value }
  }
  public  var underlyingHomeFolder: Folder!
  public  var currentFolder: Folder {
      get { return underlyingCurrentFolder }
      set(value) { underlyingCurrentFolder = value }
  }
  public  var underlyingCurrentFolder: Folder!


  // MARK: - <init> - parameters


  // MARK: - <init> - closure mocks

  public var initClosure: (()  -> Void)? = nil


  // MARK: - <init> - initializer mocked

  public required init() {
    initClosure?()
  }


  // MARK: - <init> - parameters

  public var initUsingReceivedFileManager: FileManager?

  // MARK: - <init> - closure mocks

  public var initUsingClosure: ((FileManager)  -> Void)? = nil


  // MARK: - <init> - initializer mocked

  public required init(using fileManager: FileManager) {
      initUsingReceivedFileManager = fileManager
    initUsingClosure?(fileManager)
  }


  // MARK: - <createFile> - parameters

  public var createFileAtThrowableError: Error?
  public var createFileAtCallsCount = 0
  public var createFileAtCalled: Bool {
    return createFileAtCallsCount > 0
  }
  public var createFileAtReceivedPath: String?
  public var createFileAtReturnValue: FileProtocol?

  // MARK: - <createFile> - closure mocks

  public var createFileAtClosure: ((String) throws  -> FileProtocol)? = nil



  // MARK: - <createFile> - method mocked

  open func createFile(at path: String) throws -> FileProtocol {


      // <createFile> - Throwable method implementation

    if let error = createFileAtThrowableError {
        throw error
    }

      createFileAtCallsCount += 1
      createFileAtReceivedPath = path

      // <createFile> - Return Value mock implementation

      guard let closureReturn = createFileAtClosure else {
          guard let returnValue = createFileAtReturnValue else {
              let message = "No returnValue implemented for createFileAtClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(path)
  }

  // MARK: - <createFile> - parameters

  public var createFileAtDataContentsThrowableError: Error?
  public var createFileAtDataContentsCallsCount = 0
  public var createFileAtDataContentsCalled: Bool {
    return createFileAtDataContentsCallsCount > 0
  }
  public var createFileAtDataContentsReceivedArguments: (path: (String), dataContents: (Data))?
  public var createFileAtDataContentsReturnValue: FileProtocol?

  // MARK: - <createFile> - closure mocks

  public var createFileAtDataContentsClosure: ((String, Data) throws  -> FileProtocol)? = nil



  // MARK: - <createFile> - method mocked

  open func createFile(at path: String, dataContents: Data) throws -> FileProtocol {


      // <createFile> - Throwable method implementation

    if let error = createFileAtDataContentsThrowableError {
        throw error
    }

      createFileAtDataContentsCallsCount += 1
      createFileAtDataContentsReceivedArguments = (path: path, dataContents: dataContents)

      // <createFile> - Return Value mock implementation

      guard let closureReturn = createFileAtDataContentsClosure else {
          guard let returnValue = createFileAtDataContentsReturnValue else {
              let message = "No returnValue implemented for createFileAtDataContentsClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(path, dataContents)
  }

  // MARK: - <createFileIfNeeded> - parameters

  public var createFileIfNeededAtThrowableError: Error?
  public var createFileIfNeededAtCallsCount = 0
  public var createFileIfNeededAtCalled: Bool {
    return createFileIfNeededAtCallsCount > 0
  }
  public var createFileIfNeededAtReceivedPath: String?
  public var createFileIfNeededAtReturnValue: FileProtocol?

  // MARK: - <createFileIfNeeded> - closure mocks

  public var createFileIfNeededAtClosure: ((String) throws  -> FileProtocol)? = nil



  // MARK: - <createFileIfNeeded> - method mocked

  open func createFileIfNeeded(at path: String) throws -> FileProtocol {


      // <createFileIfNeeded> - Throwable method implementation

    if let error = createFileIfNeededAtThrowableError {
        throw error
    }

      createFileIfNeededAtCallsCount += 1
      createFileIfNeededAtReceivedPath = path

      // <createFileIfNeeded> - Return Value mock implementation

      guard let closureReturn = createFileIfNeededAtClosure else {
          guard let returnValue = createFileIfNeededAtReturnValue else {
              let message = "No returnValue implemented for createFileIfNeededAtClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(path)
  }

  // MARK: - <createFileIfNeeded> - parameters

  public var createFileIfNeededAtContentsThrowableError: Error?
  public var createFileIfNeededAtContentsCallsCount = 0
  public var createFileIfNeededAtContentsCalled: Bool {
    return createFileIfNeededAtContentsCallsCount > 0
  }
  public var createFileIfNeededAtContentsReceivedArguments: (path: (String), contents: (Data))?
  public var createFileIfNeededAtContentsReturnValue: FileProtocol?

  // MARK: - <createFileIfNeeded> - closure mocks

  public var createFileIfNeededAtContentsClosure: ((String, Data) throws  -> FileProtocol)? = nil



  // MARK: - <createFileIfNeeded> - method mocked

  open func createFileIfNeeded(at path: String, contents: Data) throws -> FileProtocol {


      // <createFileIfNeeded> - Throwable method implementation

    if let error = createFileIfNeededAtContentsThrowableError {
        throw error
    }

      createFileIfNeededAtContentsCallsCount += 1
      createFileIfNeededAtContentsReceivedArguments = (path: path, contents: contents)

      // <createFileIfNeeded> - Return Value mock implementation

      guard let closureReturn = createFileIfNeededAtContentsClosure else {
          guard let returnValue = createFileIfNeededAtContentsReturnValue else {
              let message = "No returnValue implemented for createFileIfNeededAtContentsClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(path, contents)
  }

  // MARK: - <createFolder> - parameters

  public var createFolderAtThrowableError: Error?
  public var createFolderAtCallsCount = 0
  public var createFolderAtCalled: Bool {
    return createFolderAtCallsCount > 0
  }
  public var createFolderAtReceivedPath: String?
  public var createFolderAtReturnValue: FolderProtocol?

  // MARK: - <createFolder> - closure mocks

  public var createFolderAtClosure: ((String) throws  -> FolderProtocol)? = nil



  // MARK: - <createFolder> - method mocked

  open func createFolder(at path: String) throws -> FolderProtocol {


      // <createFolder> - Throwable method implementation

    if let error = createFolderAtThrowableError {
        throw error
    }

      createFolderAtCallsCount += 1
      createFolderAtReceivedPath = path

      // <createFolder> - Return Value mock implementation

      guard let closureReturn = createFolderAtClosure else {
          guard let returnValue = createFolderAtReturnValue else {
              let message = "No returnValue implemented for createFolderAtClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(path)
  }

  // MARK: - <createFolderIfNeeded> - parameters

  public var createFolderIfNeededAtThrowableError: Error?
  public var createFolderIfNeededAtCallsCount = 0
  public var createFolderIfNeededAtCalled: Bool {
    return createFolderIfNeededAtCallsCount > 0
  }
  public var createFolderIfNeededAtReceivedPath: String?
  public var createFolderIfNeededAtReturnValue: FolderProtocol?

  // MARK: - <createFolderIfNeeded> - closure mocks

  public var createFolderIfNeededAtClosure: ((String) throws  -> FolderProtocol)? = nil



  // MARK: - <createFolderIfNeeded> - method mocked

  open func createFolderIfNeeded(at path: String) throws -> FolderProtocol {


      // <createFolderIfNeeded> - Throwable method implementation

    if let error = createFolderIfNeededAtThrowableError {
        throw error
    }

      createFolderIfNeededAtCallsCount += 1
      createFolderIfNeededAtReceivedPath = path

      // <createFolderIfNeeded> - Return Value mock implementation

      guard let closureReturn = createFolderIfNeededAtClosure else {
          guard let returnValue = createFolderIfNeededAtReturnValue else {
              let message = "No returnValue implemented for createFolderIfNeededAtClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(path)
  }

  // MARK: - <itemKind> - parameters

  public var itemKindAtCallsCount = 0
  public var itemKindAtCalled: Bool {
    return itemKindAtCallsCount > 0
  }
  public var itemKindAtReceivedPath: String?
  public var itemKindAtReturnValue: FileSystem.Item.Kind??

  // MARK: - <itemKind> - closure mocks

  public var itemKindAtClosure: ((String)  -> FileSystem.Item.Kind?)? = nil



  // MARK: - <itemKind> - method mocked

  open func itemKind(at path: String) -> FileSystem.Item.Kind? {

      itemKindAtCallsCount += 1
      itemKindAtReceivedPath = path

      // <itemKind> - Return Value mock implementation

      guard let closureReturn = itemKindAtClosure else {
          guard let returnValue = itemKindAtReturnValue else {
              let message = "No returnValue implemented for itemKindAtClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileSystem.Item.Kind?

              print("❌ \(error)")

              return nil
          }
          return returnValue
      }

      return closureReturn(path)
  }
}


// MARK: - FolderProtocolMock

open class FolderProtocolMock: FolderProtocol {


  public  var path: String {
      get { return underlyingPath }
      set(value) { underlyingPath = value }
  }
  public  var underlyingPath: String = "AutoMockable filled value"
  public  var name: String {
      get { return underlyingName }
      set(value) { underlyingName = value }
  }
  public  var underlyingName: String = "AutoMockable filled value"
  public  var nameExcludingExtension: String {
      get { return underlyingNameExcludingExtension }
      set(value) { underlyingNameExcludingExtension = value }
  }
  public  var underlyingNameExcludingExtension: String = "AutoMockable filled value"
  public var `extension`: String?
  public  var modificationDate: Date {
      get { return underlyingModificationDate }
      set(value) { underlyingModificationDate = value }
  }
  public  var underlyingModificationDate: Date = Date()
  public  var description: String {
      get { return underlyingDescription }
      set(value) { underlyingDescription = value }
  }
  public  var underlyingDescription: String = "AutoMockable filled value"


  // MARK: - <mostRecentSubfolder> - parameters

  public var mostRecentSubfolderThrowableError: Error?
  public var mostRecentSubfolderCallsCount = 0
  public var mostRecentSubfolderCalled: Bool {
    return mostRecentSubfolderCallsCount > 0
  }
  public var mostRecentSubfolderReturnValue: FolderProtocol?

  // MARK: - <mostRecentSubfolder> - closure mocks

  public var mostRecentSubfolderClosure: (() throws  -> FolderProtocol)? = nil



  // MARK: - <mostRecentSubfolder> - method mocked

  open func mostRecentSubfolder() throws -> FolderProtocol {


      // <mostRecentSubfolder> - Throwable method implementation

    if let error = mostRecentSubfolderThrowableError {
        throw error
    }

      mostRecentSubfolderCallsCount += 1

      // <mostRecentSubfolder> - Return Value mock implementation

      guard let closureReturn = mostRecentSubfolderClosure else {
          guard let returnValue = mostRecentSubfolderReturnValue else {
              let message = "No returnValue implemented for mostRecentSubfolderClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <mostRecentFile> - parameters

  public var mostRecentFileThrowableError: Error?
  public var mostRecentFileCallsCount = 0
  public var mostRecentFileCalled: Bool {
    return mostRecentFileCallsCount > 0
  }
  public var mostRecentFileReturnValue: FileProtocol?

  // MARK: - <mostRecentFile> - closure mocks

  public var mostRecentFileClosure: (() throws  -> FileProtocol)? = nil



  // MARK: - <mostRecentFile> - method mocked

  open func mostRecentFile() throws -> FileProtocol {


      // <mostRecentFile> - Throwable method implementation

    if let error = mostRecentFileThrowableError {
        throw error
    }

      mostRecentFileCallsCount += 1

      // <mostRecentFile> - Return Value mock implementation

      guard let closureReturn = mostRecentFileClosure else {
          guard let returnValue = mostRecentFileReturnValue else {
              let message = "No returnValue implemented for mostRecentFileClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <file> - parameters

  public var fileNamedThrowableError: Error?
  public var fileNamedCallsCount = 0
  public var fileNamedCalled: Bool {
    return fileNamedCallsCount > 0
  }
  public var fileNamedReceivedFileName: String?
  public var fileNamedReturnValue: FileProtocol?

  // MARK: - <file> - closure mocks

  public var fileNamedClosure: ((String) throws  -> FileProtocol)? = nil



  // MARK: - <file> - method mocked

  open func file(named fileName: String) throws -> FileProtocol {


      // <file> - Throwable method implementation

    if let error = fileNamedThrowableError {
        throw error
    }

      fileNamedCallsCount += 1
      fileNamedReceivedFileName = fileName

      // <file> - Return Value mock implementation

      guard let closureReturn = fileNamedClosure else {
          guard let returnValue = fileNamedReturnValue else {
              let message = "No returnValue implemented for fileNamedClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(fileName)
  }

  // MARK: - <file> - parameters

  public var fileAtPathThrowableError: Error?
  public var fileAtPathCallsCount = 0
  public var fileAtPathCalled: Bool {
    return fileAtPathCallsCount > 0
  }
  public var fileAtPathReceivedFilePath: String?
  public var fileAtPathReturnValue: FileProtocol?

  // MARK: - <file> - closure mocks

  public var fileAtPathClosure: ((String) throws  -> FileProtocol)? = nil



  // MARK: - <file> - method mocked

  open func file(atPath filePath: String) throws -> FileProtocol {


      // <file> - Throwable method implementation

    if let error = fileAtPathThrowableError {
        throw error
    }

      fileAtPathCallsCount += 1
      fileAtPathReceivedFilePath = filePath

      // <file> - Return Value mock implementation

      guard let closureReturn = fileAtPathClosure else {
          guard let returnValue = fileAtPathReturnValue else {
              let message = "No returnValue implemented for fileAtPathClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(filePath)
  }

  // MARK: - <containsFile> - parameters

  public var containsFileNamedCallsCount = 0
  public var containsFileNamedCalled: Bool {
    return containsFileNamedCallsCount > 0
  }
  public var containsFileNamedReceivedFileName: String?
  public var containsFileNamedReturnValue: Bool?

  // MARK: - <containsFile> - closure mocks

  public var containsFileNamedClosure: ((String)  -> Bool)? = nil



  // MARK: - <containsFile> - method mocked

  open func containsFile(named fileName: String) -> Bool {

      containsFileNamedCallsCount += 1
      containsFileNamedReceivedFileName = fileName

      // <containsFile> - Return Value mock implementation

      guard let closureReturn = containsFileNamedClosure else {
          guard let returnValue = containsFileNamedReturnValue else {
              let message = "No returnValue implemented for containsFileNamedClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement Bool

              print("❌ \(error)")

              fatalError("\(self) \(#function) should be mocked with return value or be able to throw")
          }
          return returnValue
      }

      return closureReturn(fileName)
  }

  // MARK: - <firstFolder> - parameters

  public var firstFolderWithThrowableError: Error?
  public var firstFolderWithCallsCount = 0
  public var firstFolderWithCalled: Bool {
    return firstFolderWithCallsCount > 0
  }
  public var firstFolderWithReceivedPrefix: String?
  public var firstFolderWithReturnValue: FolderProtocol?

  // MARK: - <firstFolder> - closure mocks

  public var firstFolderWithClosure: ((String) throws  -> FolderProtocol)? = nil



  // MARK: - <firstFolder> - method mocked

  open func firstFolder(with prefix: String) throws -> FolderProtocol {


      // <firstFolder> - Throwable method implementation

    if let error = firstFolderWithThrowableError {
        throw error
    }

      firstFolderWithCallsCount += 1
      firstFolderWithReceivedPrefix = prefix

      // <firstFolder> - Return Value mock implementation

      guard let closureReturn = firstFolderWithClosure else {
          guard let returnValue = firstFolderWithReturnValue else {
              let message = "No returnValue implemented for firstFolderWithClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(prefix)
  }

  // MARK: - <subfolder> - parameters

  public var subfolderNamedThrowableError: Error?
  public var subfolderNamedCallsCount = 0
  public var subfolderNamedCalled: Bool {
    return subfolderNamedCallsCount > 0
  }
  public var subfolderNamedReceivedFolderName: String?
  public var subfolderNamedReturnValue: FolderProtocol?

  // MARK: - <subfolder> - closure mocks

  public var subfolderNamedClosure: ((String) throws  -> FolderProtocol)? = nil



  // MARK: - <subfolder> - method mocked

  open func subfolder(named folderName: String) throws -> FolderProtocol {


      // <subfolder> - Throwable method implementation

    if let error = subfolderNamedThrowableError {
        throw error
    }

      subfolderNamedCallsCount += 1
      subfolderNamedReceivedFolderName = folderName

      // <subfolder> - Return Value mock implementation

      guard let closureReturn = subfolderNamedClosure else {
          guard let returnValue = subfolderNamedReturnValue else {
              let message = "No returnValue implemented for subfolderNamedClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(folderName)
  }

  // MARK: - <subfolder> - parameters

  public var subfolderAtPathThrowableError: Error?
  public var subfolderAtPathCallsCount = 0
  public var subfolderAtPathCalled: Bool {
    return subfolderAtPathCallsCount > 0
  }
  public var subfolderAtPathReceivedFolderPath: String?
  public var subfolderAtPathReturnValue: FolderProtocol?

  // MARK: - <subfolder> - closure mocks

  public var subfolderAtPathClosure: ((String) throws  -> FolderProtocol)? = nil



  // MARK: - <subfolder> - method mocked

  open func subfolder(atPath folderPath: String) throws -> FolderProtocol {


      // <subfolder> - Throwable method implementation

    if let error = subfolderAtPathThrowableError {
        throw error
    }

      subfolderAtPathCallsCount += 1
      subfolderAtPathReceivedFolderPath = folderPath

      // <subfolder> - Return Value mock implementation

      guard let closureReturn = subfolderAtPathClosure else {
          guard let returnValue = subfolderAtPathReturnValue else {
              let message = "No returnValue implemented for subfolderAtPathClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(folderPath)
  }

  // MARK: - <containsSubfolder> - parameters

  public var containsSubfolderNamedCallsCount = 0
  public var containsSubfolderNamedCalled: Bool {
    return containsSubfolderNamedCallsCount > 0
  }
  public var containsSubfolderNamedReceivedFolderName: String?
  public var containsSubfolderNamedReturnValue: Bool?

  // MARK: - <containsSubfolder> - closure mocks

  public var containsSubfolderNamedClosure: ((String)  -> Bool)? = nil



  // MARK: - <containsSubfolder> - method mocked

  open func containsSubfolder(named folderName: String) -> Bool {

      containsSubfolderNamedCallsCount += 1
      containsSubfolderNamedReceivedFolderName = folderName

      // <containsSubfolder> - Return Value mock implementation

      guard let closureReturn = containsSubfolderNamedClosure else {
          guard let returnValue = containsSubfolderNamedReturnValue else {
              let message = "No returnValue implemented for containsSubfolderNamedClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement Bool

              print("❌ \(error)")

              fatalError("\(self) \(#function) should be mocked with return value or be able to throw")
          }
          return returnValue
      }

      return closureReturn(folderName)
  }

  // MARK: - <createFileIfNeeded> - parameters

  public var createFileIfNeededNamedThrowableError: Error?
  public var createFileIfNeededNamedCallsCount = 0
  public var createFileIfNeededNamedCalled: Bool {
    return createFileIfNeededNamedCallsCount > 0
  }
  public var createFileIfNeededNamedReceivedFileName: String?
  public var createFileIfNeededNamedReturnValue: FileProtocol?

  // MARK: - <createFileIfNeeded> - closure mocks

  public var createFileIfNeededNamedClosure: ((String) throws  -> FileProtocol)? = nil



  // MARK: - <createFileIfNeeded> - method mocked

  open func createFileIfNeeded(named fileName: String) throws -> FileProtocol {


      // <createFileIfNeeded> - Throwable method implementation

    if let error = createFileIfNeededNamedThrowableError {
        throw error
    }

      createFileIfNeededNamedCallsCount += 1
      createFileIfNeededNamedReceivedFileName = fileName

      // <createFileIfNeeded> - Return Value mock implementation

      guard let closureReturn = createFileIfNeededNamedClosure else {
          guard let returnValue = createFileIfNeededNamedReturnValue else {
              let message = "No returnValue implemented for createFileIfNeededNamedClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(fileName)
  }

  // MARK: - <createFile> - parameters

  public var createFileNamedThrowableError: Error?
  public var createFileNamedCallsCount = 0
  public var createFileNamedCalled: Bool {
    return createFileNamedCallsCount > 0
  }
  public var createFileNamedReceivedFileName: String?
  public var createFileNamedReturnValue: FileProtocol?

  // MARK: - <createFile> - closure mocks

  public var createFileNamedClosure: ((String) throws  -> FileProtocol)? = nil



  // MARK: - <createFile> - method mocked

  open func createFile(named fileName: String) throws -> FileProtocol {


      // <createFile> - Throwable method implementation

    if let error = createFileNamedThrowableError {
        throw error
    }

      createFileNamedCallsCount += 1
      createFileNamedReceivedFileName = fileName

      // <createFile> - Return Value mock implementation

      guard let closureReturn = createFileNamedClosure else {
          guard let returnValue = createFileNamedReturnValue else {
              let message = "No returnValue implemented for createFileNamedClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(fileName)
  }

  // MARK: - <createFile> - parameters

  public var createFileNamedDataContentsThrowableError: Error?
  public var createFileNamedDataContentsCallsCount = 0
  public var createFileNamedDataContentsCalled: Bool {
    return createFileNamedDataContentsCallsCount > 0
  }
  public var createFileNamedDataContentsReceivedArguments: (fileName: (String), data: (Data))?
  public var createFileNamedDataContentsReturnValue: FileProtocol?

  // MARK: - <createFile> - closure mocks

  public var createFileNamedDataContentsClosure: ((String, Data) throws  -> FileProtocol)? = nil



  // MARK: - <createFile> - method mocked

  open func createFile(named fileName: String, dataContents data: Data) throws -> FileProtocol {


      // <createFile> - Throwable method implementation

    if let error = createFileNamedDataContentsThrowableError {
        throw error
    }

      createFileNamedDataContentsCallsCount += 1
      createFileNamedDataContentsReceivedArguments = (fileName: fileName, data: data)

      // <createFile> - Return Value mock implementation

      guard let closureReturn = createFileNamedDataContentsClosure else {
          guard let returnValue = createFileNamedDataContentsReturnValue else {
              let message = "No returnValue implemented for createFileNamedDataContentsClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(fileName, data)
  }

  // MARK: - <createFile> - parameters

  public var createFileNamedContentsThrowableError: Error?
  public var createFileNamedContentsCallsCount = 0
  public var createFileNamedContentsCalled: Bool {
    return createFileNamedContentsCallsCount > 0
  }
  public var createFileNamedContentsReceivedArguments: (fileName: (String), contents: (String))?
  public var createFileNamedContentsReturnValue: FileProtocol?

  // MARK: - <createFile> - closure mocks

  public var createFileNamedContentsClosure: ((String, String) throws  -> FileProtocol)? = nil



  // MARK: - <createFile> - method mocked

  open func createFile(named fileName: String, contents: String) throws -> FileProtocol {


      // <createFile> - Throwable method implementation

    if let error = createFileNamedContentsThrowableError {
        throw error
    }

      createFileNamedContentsCallsCount += 1
      createFileNamedContentsReceivedArguments = (fileName: fileName, contents: contents)

      // <createFile> - Return Value mock implementation

      guard let closureReturn = createFileNamedContentsClosure else {
          guard let returnValue = createFileNamedContentsReturnValue else {
              let message = "No returnValue implemented for createFileNamedContentsClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(fileName, contents)
  }

  // MARK: - <createSubfolder> - parameters

  public var createSubfolderNamedThrowableError: Error?
  public var createSubfolderNamedCallsCount = 0
  public var createSubfolderNamedCalled: Bool {
    return createSubfolderNamedCallsCount > 0
  }
  public var createSubfolderNamedReceivedFolderName: String?
  public var createSubfolderNamedReturnValue: FolderProtocol?

  // MARK: - <createSubfolder> - closure mocks

  public var createSubfolderNamedClosure: ((String) throws  -> FolderProtocol)? = nil



  // MARK: - <createSubfolder> - method mocked

  open func createSubfolder(named folderName: String) throws -> FolderProtocol {


      // <createSubfolder> - Throwable method implementation

    if let error = createSubfolderNamedThrowableError {
        throw error
    }

      createSubfolderNamedCallsCount += 1
      createSubfolderNamedReceivedFolderName = folderName

      // <createSubfolder> - Return Value mock implementation

      guard let closureReturn = createSubfolderNamedClosure else {
          guard let returnValue = createSubfolderNamedReturnValue else {
              let message = "No returnValue implemented for createSubfolderNamedClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(folderName)
  }

  // MARK: - <createSubfolderIfNeeded> - parameters

  public var createSubfolderIfNeededWithNameThrowableError: Error?
  public var createSubfolderIfNeededWithNameCallsCount = 0
  public var createSubfolderIfNeededWithNameCalled: Bool {
    return createSubfolderIfNeededWithNameCallsCount > 0
  }
  public var createSubfolderIfNeededWithNameReceivedFolderName: String?
  public var createSubfolderIfNeededWithNameReturnValue: FolderProtocol?

  // MARK: - <createSubfolderIfNeeded> - closure mocks

  public var createSubfolderIfNeededWithNameClosure: ((String) throws  -> FolderProtocol)? = nil



  // MARK: - <createSubfolderIfNeeded> - method mocked

  open func createSubfolderIfNeeded(withName folderName: String) throws -> FolderProtocol {


      // <createSubfolderIfNeeded> - Throwable method implementation

    if let error = createSubfolderIfNeededWithNameThrowableError {
        throw error
    }

      createSubfolderIfNeededWithNameCallsCount += 1
      createSubfolderIfNeededWithNameReceivedFolderName = folderName

      // <createSubfolderIfNeeded> - Return Value mock implementation

      guard let closureReturn = createSubfolderIfNeededWithNameClosure else {
          guard let returnValue = createSubfolderIfNeededWithNameReturnValue else {
              let message = "No returnValue implemented for createSubfolderIfNeededWithNameClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn(folderName)
  }

  // MARK: - <makeFileSequence> - parameters

  public var makeFileSequenceRecursiveIncludeHiddenCallsCount = 0
  public var makeFileSequenceRecursiveIncludeHiddenCalled: Bool {
    return makeFileSequenceRecursiveIncludeHiddenCallsCount > 0
  }
  public var makeFileSequenceRecursiveIncludeHiddenReceivedArguments: (recursive: (Bool), includeHidden: (Bool))?
  public var makeFileSequenceRecursiveIncludeHiddenReturnValue: FileSystemSequence<File>?

  // MARK: - <makeFileSequence> - closure mocks

  public var makeFileSequenceRecursiveIncludeHiddenClosure: ((Bool, Bool)  -> FileSystemSequence<File>)? = nil



  // MARK: - <makeFileSequence> - method mocked

  open func makeFileSequence(recursive: Bool, includeHidden: Bool) -> FileSystemSequence<File> {

      makeFileSequenceRecursiveIncludeHiddenCallsCount += 1
      makeFileSequenceRecursiveIncludeHiddenReceivedArguments = (recursive: recursive, includeHidden: includeHidden)

      // <makeFileSequence> - Return Value mock implementation

      guard let closureReturn = makeFileSequenceRecursiveIncludeHiddenClosure else {
          guard let returnValue = makeFileSequenceRecursiveIncludeHiddenReturnValue else {
              let message = "No returnValue implemented for makeFileSequenceRecursiveIncludeHiddenClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FileSystemSequence<File>

              print("❌ \(error)")

              fatalError("\(self) \(#function) should be mocked with return value or be able to throw")
          }
          return returnValue
      }

      return closureReturn(recursive, includeHidden)
  }

  // MARK: - <copy> - parameters

  public var copyToThrowableError: Error?
  public var copyToCallsCount = 0
  public var copyToCalled: Bool {
    return copyToCallsCount > 0
  }
  public var copyToReceivedFolder: FolderProtocol?
  public var copyToReturnValue: Folder?

  // MARK: - <copy> - closure mocks

  public var copyToClosure: ((FolderProtocol) throws  -> Folder)? = nil



  // MARK: - <copy> - method mocked

  open func copy(to folder: FolderProtocol) throws -> Folder {


      // <copy> - Throwable method implementation

    if let error = copyToThrowableError {
        throw error
    }

      copyToCallsCount += 1
      copyToReceivedFolder = folder

      // <copy> - Return Value mock implementation

      guard let closureReturn = copyToClosure else {
          guard let returnValue = copyToReturnValue else {
              let message = "No returnValue implemented for copyToClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement Folder

              throw error
          }
          return returnValue
      }

      return try closureReturn(folder)
  }

  // MARK: - <url> - parameters

  public var urlThrowableError: Error?
  public var urlCallsCount = 0
  public var urlCalled: Bool {
    return urlCallsCount > 0
  }
  public var urlReturnValue: URL?

  // MARK: - <url> - closure mocks

  public var urlClosure: (() throws  -> URL)? = nil



  // MARK: - <url> - method mocked

  open func url() throws -> URL {


      // <url> - Throwable method implementation

    if let error = urlThrowableError {
        throw error
    }

      urlCallsCount += 1

      // <url> - Return Value mock implementation

      guard let closureReturn = urlClosure else {
          guard let returnValue = urlReturnValue else {
              let message = "No returnValue implemented for urlClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement URL

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <init> - parameters

  public var initThrowableError: Error?

  // MARK: - <init> - closure mocks

  public var initClosure: (() throws  -> Void)? = nil


  // MARK: - <init> - initializer mocked

  public required init() throws {
     try? initClosure?()
  }


  // MARK: - <init> - parameters

  public var initPathThrowableError: Error?
  public var initPathReceivedPath: String?

  // MARK: - <init> - closure mocks

  public var initPathClosure: ((String) throws  -> Void)? = nil


  // MARK: - <init> - initializer mocked

  public required init(path: String) throws {
      initPathReceivedPath = path
     try? initPathClosure?(path)
  }


  // MARK: - <init?> - parameters

  public var initPossbilyInvalidPathReceivedPossbilyInvalidPath: String?

  // MARK: - <init?> - closure mocks

  public var initPossbilyInvalidPathClosure: ((String)  -> Void)? = nil


  // MARK: - <init?> - initializer mocked

  public required init?(possbilyInvalidPath: String) {
      initPossbilyInvalidPathReceivedPossbilyInvalidPath = possbilyInvalidPath
    initPossbilyInvalidPathClosure?(possbilyInvalidPath)
  }


  // MARK: - <parentFolder> - parameters

  public var parentFolderThrowableError: Error?
  public var parentFolderCallsCount = 0
  public var parentFolderCalled: Bool {
    return parentFolderCallsCount > 0
  }
  public var parentFolderReturnValue: FolderProtocol?

  // MARK: - <parentFolder> - closure mocks

  public var parentFolderClosure: (() throws  -> FolderProtocol)? = nil



  // MARK: - <parentFolder> - method mocked

  open func parentFolder() throws -> FolderProtocol {


      // <parentFolder> - Throwable method implementation

    if let error = parentFolderThrowableError {
        throw error
    }

      parentFolderCallsCount += 1

      // <parentFolder> - Return Value mock implementation

      guard let closureReturn = parentFolderClosure else {
          guard let returnValue = parentFolderReturnValue else {
              let message = "No returnValue implemented for parentFolderClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <rename> - parameters

  public var renameToThrowableError: Error?
  public var renameToCallsCount = 0
  public var renameToCalled: Bool {
    return renameToCallsCount > 0
  }
  public var renameToReceivedNewName: String?

  // MARK: - <rename> - closure mocks

  public var renameToClosure: ((String) throws  -> Void)? = nil



  // MARK: - <rename> - method mocked

  open func rename(to newName: String) throws {


      // <rename> - Throwable method implementation

    if let error = renameToThrowableError {
        throw error
    }

      renameToCallsCount += 1
      renameToReceivedNewName = newName

      // <rename> - Void return mock implementation

        try renameToClosure?(newName)

  }

  // MARK: - <rename> - parameters

  public var renameToKeepExtensionThrowableError: Error?
  public var renameToKeepExtensionCallsCount = 0
  public var renameToKeepExtensionCalled: Bool {
    return renameToKeepExtensionCallsCount > 0
  }
  public var renameToKeepExtensionReceivedArguments: (newName: (String), keepExtension: (Bool))?

  // MARK: - <rename> - closure mocks

  public var renameToKeepExtensionClosure: ((String, Bool) throws  -> Void)? = nil



  // MARK: - <rename> - method mocked

  open func rename(to newName: String, keepExtension: Bool) throws {


      // <rename> - Throwable method implementation

    if let error = renameToKeepExtensionThrowableError {
        throw error
    }

      renameToKeepExtensionCallsCount += 1
      renameToKeepExtensionReceivedArguments = (newName: newName, keepExtension: keepExtension)

      // <rename> - Void return mock implementation

        try renameToKeepExtensionClosure?(newName, keepExtension)

  }

  // MARK: - <move> - parameters

  public var moveToThrowableError: Error?
  public var moveToCallsCount = 0
  public var moveToCalled: Bool {
    return moveToCallsCount > 0
  }
  public var moveToReceivedNewParent: Folder?

  // MARK: - <move> - closure mocks

  public var moveToClosure: ((Folder) throws  -> Void)? = nil



  // MARK: - <move> - method mocked

  open func move(to newParent: Folder) throws {


      // <move> - Throwable method implementation

    if let error = moveToThrowableError {
        throw error
    }

      moveToCallsCount += 1
      moveToReceivedNewParent = newParent

      // <move> - Void return mock implementation

        try moveToClosure?(newParent)

  }

  // MARK: - <delete> - parameters

  public var deleteThrowableError: Error?
  public var deleteCallsCount = 0
  public var deleteCalled: Bool {
    return deleteCallsCount > 0
  }

  // MARK: - <delete> - closure mocks

  public var deleteClosure: (() throws  -> Void)? = nil



  // MARK: - <delete> - method mocked

  open func delete() throws {


      // <delete> - Throwable method implementation

    if let error = deleteThrowableError {
        throw error
    }

      deleteCallsCount += 1

      // <delete> - Void return mock implementation

        try deleteClosure?()

  }
}


// MARK: - ItemProtocolMock

open class ItemProtocolMock: ItemProtocol {


  public  var path: String {
      get { return underlyingPath }
      set(value) { underlyingPath = value }
  }
  public  var underlyingPath: String = "AutoMockable filled value"
  public  var name: String {
      get { return underlyingName }
      set(value) { underlyingName = value }
  }
  public  var underlyingName: String = "AutoMockable filled value"
  public  var nameExcludingExtension: String {
      get { return underlyingNameExcludingExtension }
      set(value) { underlyingNameExcludingExtension = value }
  }
  public  var underlyingNameExcludingExtension: String = "AutoMockable filled value"
  public var `extension`: String?
  public  var modificationDate: Date {
      get { return underlyingModificationDate }
      set(value) { underlyingModificationDate = value }
  }
  public  var underlyingModificationDate: Date = Date()
  public  var description: String {
      get { return underlyingDescription }
      set(value) { underlyingDescription = value }
  }
  public  var underlyingDescription: String = "AutoMockable filled value"


  // MARK: - <parentFolder> - parameters

  public var parentFolderThrowableError: Error?
  public var parentFolderCallsCount = 0
  public var parentFolderCalled: Bool {
    return parentFolderCallsCount > 0
  }
  public var parentFolderReturnValue: FolderProtocol?

  // MARK: - <parentFolder> - closure mocks

  public var parentFolderClosure: (() throws  -> FolderProtocol)? = nil



  // MARK: - <parentFolder> - method mocked

  open func parentFolder() throws -> FolderProtocol {


      // <parentFolder> - Throwable method implementation

    if let error = parentFolderThrowableError {
        throw error
    }

      parentFolderCallsCount += 1

      // <parentFolder> - Return Value mock implementation

      guard let closureReturn = parentFolderClosure else {
          guard let returnValue = parentFolderReturnValue else {
              let message = "No returnValue implemented for parentFolderClosure"
              let error = SourceryMockError.implementErrorCaseFor(message)

              // You should implement FolderProtocol

              throw error
          }
          return returnValue
      }

      return try closureReturn()
  }

  // MARK: - <rename> - parameters

  public var renameToThrowableError: Error?
  public var renameToCallsCount = 0
  public var renameToCalled: Bool {
    return renameToCallsCount > 0
  }
  public var renameToReceivedNewName: String?

  // MARK: - <rename> - closure mocks

  public var renameToClosure: ((String) throws  -> Void)? = nil



  // MARK: - <rename> - method mocked

  open func rename(to newName: String) throws {


      // <rename> - Throwable method implementation

    if let error = renameToThrowableError {
        throw error
    }

      renameToCallsCount += 1
      renameToReceivedNewName = newName

      // <rename> - Void return mock implementation

        try renameToClosure?(newName)

  }

  // MARK: - <rename> - parameters

  public var renameToKeepExtensionThrowableError: Error?
  public var renameToKeepExtensionCallsCount = 0
  public var renameToKeepExtensionCalled: Bool {
    return renameToKeepExtensionCallsCount > 0
  }
  public var renameToKeepExtensionReceivedArguments: (newName: (String), keepExtension: (Bool))?

  // MARK: - <rename> - closure mocks

  public var renameToKeepExtensionClosure: ((String, Bool) throws  -> Void)? = nil



  // MARK: - <rename> - method mocked

  open func rename(to newName: String, keepExtension: Bool) throws {


      // <rename> - Throwable method implementation

    if let error = renameToKeepExtensionThrowableError {
        throw error
    }

      renameToKeepExtensionCallsCount += 1
      renameToKeepExtensionReceivedArguments = (newName: newName, keepExtension: keepExtension)

      // <rename> - Void return mock implementation

        try renameToKeepExtensionClosure?(newName, keepExtension)

  }

  // MARK: - <move> - parameters

  public var moveToThrowableError: Error?
  public var moveToCallsCount = 0
  public var moveToCalled: Bool {
    return moveToCallsCount > 0
  }
  public var moveToReceivedNewParent: Folder?

  // MARK: - <move> - closure mocks

  public var moveToClosure: ((Folder) throws  -> Void)? = nil



  // MARK: - <move> - method mocked

  open func move(to newParent: Folder) throws {


      // <move> - Throwable method implementation

    if let error = moveToThrowableError {
        throw error
    }

      moveToCallsCount += 1
      moveToReceivedNewParent = newParent

      // <move> - Void return mock implementation

        try moveToClosure?(newParent)

  }

  // MARK: - <delete> - parameters

  public var deleteThrowableError: Error?
  public var deleteCallsCount = 0
  public var deleteCalled: Bool {
    return deleteCallsCount > 0
  }

  // MARK: - <delete> - closure mocks

  public var deleteClosure: (() throws  -> Void)? = nil



  // MARK: - <delete> - method mocked

  open func delete() throws {


      // <delete> - Throwable method implementation

    if let error = deleteThrowableError {
        throw error
    }

      deleteCallsCount += 1

      // <delete> - Void return mock implementation

        try deleteClosure?()

  }
}


// MARK: - OBJECTIVE-C



// MARK: - Sourcery Errors

public enum SourceryMockError: Swift.Error, Hashable
{
    case implementErrorCaseFor(String)
    case subclassMockBeforeUsing(String)

    public var debugDescription: String
    {
        switch self
        {
        case let .implementErrorCaseFor(message):
            return """
            🧙‍♂️ SourceryMockError.implementErrorCaseFor:
            message: \(message)
            """
        case let .subclassMockBeforeUsing(message):
            return """
            \n
            🧙‍♂️ SourceryMockError.subclassMockBeforeUsing:
            message: \(message)
            """
        }
    }
}
