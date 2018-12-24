//
//  ZFileFolderWorker.swift
//  AutomateZFile
//
//  Created by Stijn on 24/12/2018.
//  Copyright © 2018 dooz. All rights reserved.
//

import Foundation
import SourceryAutoProtocols
import ZFile
import FoundationGenericHelper

public protocol ZFileFolderWorkerProtocol: AutoMockable {
    /// sourcery:inline:ZFileFolderWorker.AutoGenerateProtocol
    var scrRoot: (folder: FolderProtocol, key: ZFileFolderWorker.Key) { get }
    /// sourcery:end
}

public struct  ZFileFolderWorker: ZFileFolderWorkerProtocol, AutoGenerateProtocol {
    
    public enum Key: String {
        case scrRoot = "BE_DOOZ_SRCROOT"
    }
    
    public let scrRoot: (folder: FolderProtocol, key: ZFileFolderWorker.Key)
    
    init(bundle: BundleProtocol = Bundle.main) throws {
        self.scrRoot = (try Folder(path: try bundle.string(for: AnyRawRepresentable(Key.scrRoot))), Key.scrRoot)
    }
}

