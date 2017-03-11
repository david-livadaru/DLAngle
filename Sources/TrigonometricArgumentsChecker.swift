//
//  TrigonometricArgumentsChecker.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import UIKit

class TrigonometricArgumentsChecker: ArgumentsChecker<Float80> {
    enum TrigonometricFunction: String {
        case asin, acos, atan2, tan, cot, sec, cosec
    }
    
    init(value: Float80, function: TrigonometricFunction) throws {
        switch function {
        case .asin:
            fallthrough
        case .acos:
            fallthrough
        case .atan2:
            super.init(value: value,
                       validRange: TrigonometricArgumentsChecker.validRange(for: function))
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
            super.init(value: angle.rawValue,
                       invalidValues: TrigonometricArgumentsChecker.invalidArguments(for: function))
        default:
            throw AngleError(reason: "Invalid function to check.")
        }
    }
    
    // MARK: Private functionality
    
    private static func invalidArguments(for function: TrigonometricFunction) -> [Float80] {
        switch function {
        case .sec:
            fallthrough
        case .tan:
            return [Float80.pi / 2, 3 * Float80.pi / 2]
        case .cosec:
            fallthrough
        case .cot:
            return [0.0, Float80.pi]
        case .atan2:
            return [0.0]
        default:
            return []
        }
    }
    
    private static func validRange(for function: TrigonometricFunction) -> ClosedRange<Float80> {
        switch function {
        case .asin:
            fallthrough
        case .acos:
            return -1.0...1.0
        default:
            return -Float80.infinity...Float80.infinity
        }
    }
}
