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
        case .asin, .acos, .asec, .acsc, .acosh, .atanh, .acoth, .asech:
            super.init(value: value,
                       validInterval: TrigonometricArgumentsChecker.validInterval(for: function))
        case .acot, .acsch, .coth:
            super.init(value: value,
                       invalidValues: TrigonometricArgumentsChecker.invalidArguments(for: function))
        default:
            throw TrigonometricError.undefinedFunction
        }
    }

    init(angle: Radian, function: TrigonometricFunction) throws {
        angle.normalize()
        switch function {
        case .tan, .cot, .sec, .csc, .coth, .csch:
            super.init(value: angle.rawValue,
                       invalidValues: TrigonometricArgumentsChecker.invalidArguments(for: function))
        default:
            throw TrigonometricError.undefinedFunction
        }
    }

    func checkInfinityValue(for function: TrigonometricFunction) throws {
        switch function {
        case .sin, .cos, .tan, .cot, .sec, .csc, .asech:
            throw TrigonometricError.codomainValueNotComputable
        case .atan, .acot, .asec, .acsc, .acoth, .acsch:
            throw TrigonometricError.undefinedCodomainValue
        default:
            break
        }
    }
    
    // MARK: Private functionality
    
    private static func invalidArguments(for function: TrigonometricFunction) -> [Double] {
        switch function {
        case .sec, .tan:
            return [Double.pi / 2, 3 * Double.pi / 2]
        case .cot, .csc:
            return [0.0, Double.pi]
        case .coth, .csch, .acot, .acsch:
            return [0.0]
        default:
            return []
        }
    }
    
    private static func validInterval(for function: TrigonometricFunction) -> UnionInterval {
        switch function {
        case .asin, .acos:
            return [[-1.0..1.0]]
        case .asec, .acsc:
            return [-Double.infinity .>. -1, 1.<.Double.infinity]
        case .acosh:
            return [1.<.Double.infinity]
        case .atanh:
            return [-1.><.1]
        case .acoth:
            return [-Double.infinity .><. -1, 1.><.Double.infinity]
        case .asech:
            return [0.<.1]
        default:
            return [-Double.infinity .><. Double.infinity]
        }
    }
}
