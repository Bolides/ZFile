//
//  BundleProtocol.swift
//  ZFile
//
//  Created by Stijn on 22/12/2018.
//  Copyright © 2018 dooz. All rights reserved.
//

import Foundation
import SourceryAutoProtocols
import FoundationGenericHelper

// MARK: - Bundle complies to BundleProtocol

public protocol BundleProtocol: AutoMockable {
    /// sourcery:inline:Bundle.AutoGenerateProtocol

    func fileforResource(with name: String, of type: String) throws  -> FileProtocol
    func string(for key: AnyRawRepresentable<String>) throws  -> String
    /// sourcery:end
}

extension Bundle: BundleProtocol, AutoGenerateProtocol {
    
    public enum Error: Swift.Error {
        case noValueFor(_ key: AnyRawRepresentable<String>)
    }
    
    public func fileforResource(with name: String, of type: String) throws -> FileProtocol {
        guard let path = Bundle.main.path(forResource: name, ofType: type) else {
            throw FileSystem.Item.PathError.invalid("\(name).\(type)")
        }
        return try File(path: path)
    }
    
    public func string(for key: AnyRawRepresentable<String>) throws -> String {
        guard let string = Bundle.main.object(forInfoDictionaryKey: key.rawValue) as? String else {
            throw Error.noValueFor(key)
        }
        return string
    }
}
