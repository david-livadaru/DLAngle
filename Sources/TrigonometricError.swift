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
/// - invalidParameter: thrown when a trigonometric function is not defined.
///                     for given parameter (e.g. tan(Double.pi / 2)) or if the given parameter is undefined was called
///                     with an invalid pameter (e.g. atan2(-inf, -inf)).
/// - codomainValueNotComputable: thrown when a trigonometric function is not computable for given value.
/// - undefinedCodomainValue: trhwon when a trigonometric function's value would result into an undefined value.
public enum TrigonometricError: Error {
    case undefinedFunction
    case invalidParameter
    case codomainValueNotComputable
    case undefinedCodomainValue
}
