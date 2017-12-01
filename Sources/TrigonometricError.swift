//
//  TrigonometricError.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import Foundation

/// An error which is thrown when an error has been catched.
///
/// - undefinedFunction: thrown when an attempt to check an invalid function has been made.
/// - invalidParameter: thrown when a trigonometric function was called with an invalid pameter. E.g.: tan(0).
public enum TrigonometricError: Error {
    case undefinedFunction
    case invalidParameter
}
