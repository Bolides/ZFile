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
