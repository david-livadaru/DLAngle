//
//  TrigonometricError.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import Foundation

/// An error which provides descriptive information regarding
/// the computation error of trigonometric functions.
public struct TrigonometricError: Error {
    public let reason: String
    
    public var localizedDescription: String {
        return reason
    }
}
