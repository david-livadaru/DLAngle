//
//  AngleType.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation

public protocol AngleType: RawRepresentable {
    init(rawValue: Self.RawValue)
}

