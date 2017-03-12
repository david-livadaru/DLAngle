//
//  TrigonometricArgumentsChecker.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import UIKit

/// A concrete interface for checking arguments of trigonometric functions.  
class TrigonometricArgumentsChecker: ArgumentsChecker<Double> {
    enum TrigonometricFunction: String {
        case asin, acos, atan, atan2, sin, cos, tan, cot, sec, cosec
    }
    
    init(value: Double, function: TrigonometricFunction) throws {
        switch function {
        case .asin:
            fallthrough
        case .acos:
            super.init(value: value,
                       validRange: TrigonometricArgumentsChecker.validRange(for: function))
        case .atan2:
            super.init(value: value,
                       invalidValues: TrigonometricArgumentsChecker.invalidArguments(for: function))
        default:
            throw AngleError(reason: "Invalid function to check.")
        }
    }

    init(angle: Radian, function: TrigonometricFunction) throws {
        angle.normalize()
        switch function {
        case .tan:
            fallthrough
        case .cot:
            fallthrough
        case .sec:
            fallthrough
        case .cosec:
            super.init(value: angle.double,
                       invalidValues: TrigonometricArgumentsChecker.invalidArguments(for: function))
        default:
            throw AngleError(reason: "Invalid function to check.")
        }
    }
    
    // MARK: Private functionality
    
    private static func invalidArguments(for function: TrigonometricFunction) -> [Double] {
        switch function {
        case .sec:
            fallthrough
        case .tan:
            return [Double.pi / 2, 3 * Double.pi / 2]
        case .cosec:
            fallthrough
        case .cot:
            return [0.0, Double.pi]
        case .atan2:
            return [0.0]
        default:
            return []
        }
    }
    
    private static func validRange(for function: TrigonometricFunction) -> ClosedRange<Double> {
        switch function {
        case .asin:
            fallthrough
        case .acos:
            return -1.0...1.0
        default:
            return -Double.infinity...Double.infinity
        }
    }
}
