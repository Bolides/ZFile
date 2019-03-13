//
//  AnyRawRepresentable.swift
//  ZFile
//
//  Created by Stijn on 22/12/2018.
//  Copyright © 2018 dooz. All rights reserved.
//

import Foundation

public struct AnyRawRepresentable<RawValue>: RawRepresentable
{
    public let rawValue: RawValue

    public init<R>(_ proxy: R) where R: RawRepresentable, R.RawValue == RawValue
    {
        rawValue = proxy.rawValue
    }

    public init?(rawValue: RawValue)
    {
        self.rawValue = rawValue
    }
}
