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

    func string(for key: AnyRawRepresentable<String>) throws  -> String
    /// sourcery:end
}

extension Bundle: BundleProtocol, AutoGenerateProtocol {
    
    public enum Error: Swift.Error {
        case noValueFor(_ key: AnyRawRepresentable<String>)
    }
    
    public func string(for key: AnyRawRepresentable<String>) throws -> String {
        guard let string = Bundle.main.object(forInfoDictionaryKey: key.rawValue) as? String else {
            throw Error.noValueFor(key)
        }
        return string
    }
}
