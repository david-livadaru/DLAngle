//
//  TrigonometricArgumentsChecker.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import UIKit
#if os(iOS)
    import DLInterval_iOS
#elseif os(watchOS)
    import DLInteval_watchOS
#elseif os(tvOS)
    import DLInteval_tvOS
#elseif os(macOS)
    import DLInteval_macOS
#elseif os(Linux)
    import DLInteval
#endif

/// A concrete interface for checking arguments of trigonometric functions.  
class TrigonometricArgumentsChecker: ArgumentsChecker {
    init(value: Double, function: TrigonometricFunction) throws {
        switch function {
        case .asin, .acos, .asec, .acosec, .acosh, .atanh, .acoth, .asech:
            super.init(value: value,
                       validInterval: TrigonometricArgumentsChecker.validInterval(for: function))
        case .atan2, .acot, .acosech:
            super.init(value: value,
                       invalidValues: TrigonometricArgumentsChecker.invalidArguments(for: function))
        default:
            throw AngleError(reason: "Unable to check the \(function) function.")
        }
    }

    init(angle: Radian, function: TrigonometricFunction) throws {
        angle.normalize()
        switch function {
        case .tan, .cot, .sec, .cosec, .coth, .cosech:
            super.init(value: angle.rawValue,
                       invalidValues: TrigonometricArgumentsChecker.invalidArguments(for: function))
        default:
            throw AngleError(reason: "Unable to check the \(function) function.")
        }
    }
    
    // MARK: Private functionality
    
    private static func invalidArguments(for function: TrigonometricFunction) -> [Double] {
        switch function {
        case .sec, .tan:
            return [Double.pi / 2, 3 * Double.pi / 2]
        case .cot, .cosec:
            return [0.0, Double.pi]
        case .atan2 /* y value */, .coth, .cosech, .acot, .acosech:
            return [0.0]
        default:
            return []
        }
    }
    
    private static func validInterval(for function: TrigonometricFunction) -> UnionInterval {
        switch function {
        case .asin, .acos:
            return [[-1.0..1.0]]
        case .asec, .acosec:
            return [-Double.infinity .>. -1, 1.<.Double.infinity]
        case .acosh:
            return [1.<.Double.infinity]
        case .atanh:
            return [-1.><.1]
        case .acoth:
            return [-Double.infinity .><. -1, 1.><.Double.infinity]
        case .asech:
            return [-Double.infinity .><. 0, 1.><.Double.infinity]
        default:
            return [-Double.infinity .><. Double.infinity]
        }
    }
}
