//
//  TrigonometryFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

/// Provides an easy to use and strongly typed interface for applying 
/// trigonometric functions on floating point types.
public struct Trigonometry {
    // MARK: Trigonometric functions
    
    public static func sin(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .sin)
        let sin = GenericTrigonometry.sin(angle.rawValue)
        return sin
    }
    
    public static func sin(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .sin)
        return GenericTrigonometry.sin(angle.float)
    }
    
    #if !os(Linux)
    public static func sin(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .sin)
        let sin = GenericTrigonometry.sin(angle.rawValue)
        return CGFloat(sin)
    }
    #endif
    
    public static func cos(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .cos)
        let cos = GenericTrigonometry.cos(angle.rawValue)
        return cos
    }
    
    public static func cos(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .cos)
        return GenericTrigonometry.cos(angle.float)
    }
    
    #if !os(Linux)
    public static func cos(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .cos)
        let cos = GenericTrigonometry.cos(angle.rawValue)
        return CGFloat(cos)
    }
    #endif
    
    public static func tan(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .tan)
        let tan = GenericTrigonometry.tan(angle.rawValue)
        return tan
    }
    
    public static func tan(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .tan)
        return GenericTrigonometry.tan(angle.float)
    }
    
    #if !os(Linux)
    public static func tan(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .tan)
        let tan = GenericTrigonometry.tan(angle.rawValue)
        return CGFloat(tan)
    }
    #endif
    
    public static func cot(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .cot)
        let cot = 1.0 / GenericTrigonometry.tan(angle.rawValue)
        return cot
    }
    
    public static func cot(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .cot)
        return 1.0 / GenericTrigonometry.tan(angle.float)
    }
    
    #if !os(Linux)
    public static func cot(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .cot)
        let cot = GenericTrigonometry.tan(angle.rawValue)
        return 1.0 / CGFloat(cot)
    }
    #endif
    
    public static func sec(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .sec)
        let cosValue: Double = try cos(angle)
        return 1.0 / cosValue
    }
    
    public static func sec(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .sec)
        let cosValue: Float = try cos(angle)
        return 1.0 / cosValue
    }
    
    #if !os(Linux)
    public static func sec(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .sec)
        let cosValue: CGFloat = try cos(angle)
        return 1.0 / cosValue
    }
    #endif
    
    public static func csc(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .csc)
        let sinValue: Double = try sin(angle)
        return 1.0 / sinValue
    }
    
    public static func csc(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .csc)
        let sinValue: Float = try sin(angle)
        return 1.0 / sinValue
    }
    
    #if !os(Linux)
    public static func csc(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .csc)
        let sinValue: CGFloat = try sin(angle)
        return 1.0 / sinValue
    }
    #endif
    
    // MARK: Inverse trigonometric functions
    
    static func asin(_ value: Double) throws -> Double {
        try validate(value: value, for: .asin)
        let angle = GenericTrigonometry.asin(value)
        return angle
    }
    
    public static func asin(_ value: Double) throws -> Radian {
        let asinValue: Double = try asin(value)
        return Radian(rawValue: asinValue)
    }
    
    public static func asin(_ value: Float) throws -> Radian {
        let asinValue: Double = try asin(Double(value))
        return Radian(rawValue: asinValue)
    }
    
    #if !os(Linux)
    static func asin(_ value: CGFloat) throws -> CGFloat {
        try validate(value: value, for: .asin)
        let angle = GenericTrigonometry.asin(Double(value))
        return CGFloat(angle)
    }
    
    public static func asin(_ value: CGFloat) throws -> Radian {
        let asinValue: CGFloat = try asin(value)
        return Radian(cgFloat: asinValue)
    }
    #endif
    
    static func acos(_ value: Double) throws -> Double {
        try validate(value: value, for: .acos)
        let angle = GenericTrigonometry.acos(value)
        return angle
    }
    
    public static func acos(_ value: Double) throws -> Radian {
        let acosValue: Double = try acos(value)
        return Radian(rawValue: acosValue)
    }
    
    public static func acos(_ value: Float) throws -> Radian {
        let acosValue: Double = try acos(Double(value))
        return Radian(rawValue: acosValue)
    }
    
    #if !os(Linux)
    static func acos(_ value: CGFloat) throws -> CGFloat {
        try validate(value: value, for: .acos)
        let angle = GenericTrigonometry.acos(Double(value))
        return CGFloat(angle)
    }
    
    public static func acos(_ value: CGFloat) throws -> Radian {
        let acosValue: CGFloat = try acos(value)
        return Radian(cgFloat: acosValue)
    }
    #endif
    
    static func atan(_ value: Double) throws -> Double {
        try validate(value: value, for: .atan)
        let angle = GenericTrigonometry.atan(value)
        return angle
    }
    
    public static func atan(_ value: Double) throws -> Radian {
        let atanValue: Double = try atan(value)
        return Radian(rawValue: atanValue)
    }
    
    public static func atan(_ value: Float) throws -> Radian {
        let atanValue: Double = try atan(Double(value))
        return Radian(rawValue: atanValue)
    }
    
    #if !os(Linux)
    static func atan(_ value: CGFloat) throws -> CGFloat {
        try validate(value: value, for: .atan)
        let angle = GenericTrigonometry.atan(Double(value))
        return CGFloat(angle)
    }
    
    public static func atan(_ value: CGFloat) throws -> Radian {
        let atanValue: CGFloat = try atan(value)
        return Radian(cgFloat: atanValue)
    }
    #endif
    
    static func atan2(y: Double, x: Double) throws -> Double {
        let atan2Checker = Atan2ArgumentsChecker(y: y, x: x)
        try atan2Checker.check()

        let angle = GenericTrigonometry.atan2(y: y, x: x)
        return angle
    }
    
    public static func atan2(y: Double, x: Double) throws -> Radian {
        let atanValue: Double = try atan2(y: y, x: x)
        return Radian(rawValue: atanValue)
    }
    
    public static func atan2(y: Float, x: Float) throws -> Radian {
        let atanValue: Double = try atan2(y: Double(y), x: Double(x))
        return Radian(rawValue: atanValue)
    }
    
    #if !os(Linux)
    static func atan2(y: CGFloat, x: CGFloat) throws -> CGFloat {
        let atan2Checker = Atan2ArgumentsChecker(y: Double(y), x: Double(x))
        try atan2Checker.check()

        let angle = GenericTrigonometry.atan2(y: Double(y), x: Double(x))
        return CGFloat(angle)
    }
    
    public static func atan2(y: CGFloat, x: CGFloat) throws -> Radian {
        let atanValue: CGFloat = try atan2(y: y, x: x)
        return Radian(cgFloat: atanValue)
    }
    #endif
    
    static func acot(_ value: Double) throws -> Double {
        try validate(value: value, for: .acot)
        let atanValue: Double = try atan(value)
        return Double.pi / 2 - atanValue
    }
    
    public static func acot(_ value: Double) throws -> Radian {
        let acotValue: Double = try acot(value)
        return Radian(rawValue: acotValue)
    }
    
    public static func acot(_ value: Float) throws -> Radian {
        let acotValue: Double = try acot(Double(value))
        return Radian(rawValue: acotValue)
    }
    
    #if !os(Linux)
    static func acot(_ value: CGFloat) throws -> CGFloat {
        let doubleValue = Double(value)
        let angle: Double = try acot(doubleValue)
        return CGFloat(angle)
    }
    
    public static func acot(_ value: CGFloat) throws -> Radian {
        let acotValue: CGFloat = try acot(value)
        return Radian(cgFloat: acotValue)
    }
    #endif
    
    static func asec(_ value: Double) throws -> Double {
        try validate(value: value, for: .asec)
        return try acos(1.0 / value)
    }
    
    public static func asec(_ value: Double) throws -> Radian {
        let asecValue: Double = try asec(value)
        return Radian(rawValue: asecValue)
    }
    
    public static func asec(_ value: Float) throws -> Radian {
        let asecValue: Double = try asec(Double(value))
        return Radian(rawValue: asecValue)
    }
    
    #if !os(Linux)
    static func asec(_ value: CGFloat) throws -> CGFloat {
        let doubleValue = Double(value)
        let angle: Double = try asec(doubleValue)
        return CGFloat(angle)
    }
    
    public static func asec(_ value: CGFloat) throws -> Radian {
        let asecValue: CGFloat = try asec(value)
        return Radian(cgFloat: asecValue)
    }
    #endif
    
    static func acsc(_ value: Double) throws -> Double {
        try validate(value: value, for: .acsc)
        return try asin(1.0 / value)
    }
    
    public static func acsc(_ value: Double) throws -> Radian {
        let acscValue: Double = try acsc(value)
        return Radian(rawValue: acscValue)
    }
    
    public static func acsc(_ value: Float) throws -> Radian {
        let acscValue: Double = try acsc(Double(value))
        return Radian(rawValue: acscValue)
    }
    
    #if !os(Linux)
    static func acsc(_ value: CGFloat) throws -> CGFloat {
        let doubleValue = Double(value)
        let angle: Double = try acsc(doubleValue)
        return CGFloat(angle)
    }
    
    public static func acsc(_ value: CGFloat) throws -> Radian {
        let acscValue: CGFloat = try acsc(value)
        return Radian(cgFloat: acscValue)
    }
    #endif
    
    // MARK: Hyperbolic functions
    
    public static func sinh(_ angle: Radian) -> Double {
        if angle.rawValue.isInfinite {
            return angle.rawValue
        }
        let sinh = GenericTrigonometry.sinh(angle.rawValue)
        return sinh
    }
    
    public static func sinh(_ angle: Radian) -> Float {
        let sinhValue: Double = sinh(angle)
        return Float(sinhValue)
    }
    
    #if !os(Linux)
    public static func sinh(_ angle: Radian) -> CGFloat {
        let sinhValue: Double = sinh(angle)
        return CGFloat(sinhValue)
    }
    #endif
    
    public static func cosh(_ angle: Radian) -> Double {
        if angle.rawValue.isInfinite {
            return -angle.rawValue
        }
        let cosh = GenericTrigonometry.cosh(angle.rawValue)
        return cosh
    }
    
    public static func cosh(_ angle: Radian) -> Float {
        let coshValue: Double = cosh(angle)
        return Float(coshValue)
    }
    
    #if !os(Linux)
    public static func cosh(_ angle: Radian) -> CGFloat {
        let coshValue: Double = cosh(angle)
        return CGFloat(coshValue)
    }
    #endif
    
    public static func tanh(_ angle: Radian) -> Double {
//        switch angle.rawValue {
//        case -Double.infinity:
//            return -1.0
//        case Double.infinity:
//            return 1.0
//        default:
            let tanh = GenericTrigonometry.tanh(angle.rawValue)
            return tanh
//        }
    }
    
    public static func tanh(_ angle: Radian) -> Float {
        let tanhValue: Double = tanh(angle)
        return Float(tanhValue)
    }
    
    #if !os(Linux)
    public static func tanh(_ angle: Radian) -> CGFloat {
        let tanhValue: Double = tanh(angle)
        return CGFloat(tanhValue)
    }
    #endif
    
    public static func coth(_ angle: Radian) throws -> Double {
//        switch angle.rawValue {
//        case -Double.infinity:
//            return -1.0
//        case Double.infinity:
//            return 1.0
//        default:
            try validate(value: angle.rawValue, for: .coth)
            let tanh = GenericTrigonometry.tanh(angle.rawValue)
            return 1.0 / tanh
//        }
    }
    
    public static func coth(_ angle: Radian) throws -> Float {
        let cothValue: Double = try coth(angle)
        return Float(cothValue)
    }
    
    #if !os(Linux)
    public static func coth(_ angle: Radian) throws -> CGFloat {
        let cothValue: Double = try coth(angle)
        return CGFloat(cothValue)
    }
    #endif
    
    public static func sech(_ angle: Radian) -> Double {
        return 1.0 / cosh(angle)
    }
    
    public static func sech(_ angle: Radian) -> Float {
        return 1.0 / cosh(angle)
    }
    
    #if !os(Linux)
    public static func sech(_ angle: Radian) -> CGFloat {
        return 1.0 / cosh(angle)
    }
    #endif
    
    public static func csch(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .csch)
        return 1.0 / sinh(angle)
    }
    
    public static func csch(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .csch)
        return 1.0 / sinh(angle)
    }
    
    #if !os(Linux)
    public static func csch(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .csch)
        return 1.0 / sinh(angle)
    }
    #endif
    
    // MARK: Inverse hyperbolic functions
    
    static func asinh(_ value: Double) -> Double {
        let angle = GenericTrigonometry.asinh(value)
        return angle
    }
    
    public static func asinh(_ value: Double) -> Radian {
        return Radian(rawValue: asinh(value))
    }
    
    public static func asinh(_ value: Float) -> Radian {
        return Radian(float: GenericTrigonometry.asinh(value))
    }
    
    #if !os(Linux)
    static func asinh(_ value: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.asinh(Double(value))
        return CGFloat(angle)
    }
    
    public static func asinh(_ value: CGFloat) -> Radian {
        return Radian(cgFloat: asinh(value))
    }
    #endif
    
    static func acosh(_ value: Double) throws -> Double {
        try validate(value: value, for: .acosh)
        let angle = GenericTrigonometry.acosh(value)
        return angle
    }
    
    public static func acosh(_ value: Double) throws -> Radian {
        let acoshValue: Double = try acosh(value)
        return Radian(rawValue: acoshValue)
    }
    
    public static func acosh(_ value: Float) throws -> Radian {
        let acoshValue: Double = try acosh(Double(value))
        return Radian(rawValue: acoshValue)
    }
    
    #if !os(Linux)
    static func acosh(_ value: CGFloat) throws -> CGFloat {
        try validate(value: value, for: .acosh)
        let angle = GenericTrigonometry.acosh(Double(value))
        return CGFloat(angle)
    }
    
    public static func acosh(_ value: CGFloat) throws -> Radian {
        let acoshValue: CGFloat = try acosh(value)
        return Radian(cgFloat: acoshValue)
    }
    #endif
    
    static func atanh(_ value: Double) throws -> Double {
        try validate(value: value, for: .atanh)
        let angle = GenericTrigonometry.atanh(value)
        return angle
    }
    
    public static func atanh(_ value: Double) throws -> Radian {
        let atanhValue: Double = try atanh(value)
        return Radian(rawValue: atanhValue)
    }
    
    public static func atanh(_ value: Float) throws -> Radian {
        let atanhValue: Double = try atanh(Double(value))
        return Radian(rawValue: atanhValue)
    }
    
    #if !os(Linux)
    static func atanh(_ value: CGFloat) throws -> CGFloat {
        try validate(value: value, for: .atanh)
        let angle = GenericTrigonometry.atanh(Double(value))
        return CGFloat(angle)
    }

    public static func atanh(_ value: CGFloat) throws -> Radian {
        let atanhValue: CGFloat = try atanh(value)
        return Radian(cgFloat: atanhValue)
    }
    #endif
    
    static func acoth(_ value: Double) throws -> Double {
        try validate(value: value, for: .acoth)
        return log((value + 1) / (value - 1)) / 2.0
    }
    
    public static func acoth(_ value: Double) throws -> Radian {
        let acothValue: Double = try acoth(value)
        return Radian(rawValue: acothValue)
    }
    
    public static func acoth(_ value: Float) throws -> Radian {
        let acothValue: Double = try acoth(Double(value))
        return Radian(rawValue: acothValue)
    }
    
    #if !os(Linux)
    static func acoth(_ value: CGFloat) throws -> CGFloat {
        let acothValue: Double = try acoth(Double(value))
        return CGFloat(acothValue)
    }
    
    public static func acoth(_ value: CGFloat) throws -> Radian {
        let acothValue: CGFloat = try acoth(value)
        return Radian(cgFloat: acothValue)
    }
    #endif
    
    static func asech(_ value: Double) throws -> Double {
        try validate(value: value, for: .asech)
        return log(1.0 / value + sqrt(1.0 / value - 1.0) * sqrt(1.0 / value + 1.0))
    }
    
    public static func asech(_ value: Double) throws -> Radian {
        let asechValue: Double = try asech(value)
        return Radian(rawValue: asechValue)
    }
    
    public static func asech(_ value: Float) throws -> Radian {
        let asechValue: Double = try asech(Double(value))
        return Radian(rawValue: asechValue)
    }
    
    #if !os(Linux)
    static func asech(_ value: CGFloat) throws -> CGFloat {
        let asechValue: Double = try asech(Double(value))
        return CGFloat(asechValue)
    }
    
    public static func asech(_ value: CGFloat) throws -> Radian {
        let asechValue: CGFloat = try asech(value)
        return Radian(cgFloat: asechValue)
    }
    #endif
    
    static func acsch(_ value: Double) throws -> Double {
        try validate(value: value, for: .acsch)
        return log(1.0 / value + sqrt(1.0 / pow(value, 2.0) + 1.0))
    }
    
    public static func acsch(_ value: Double) throws -> Radian {
        let acschValue: Double = try acsch(value)
        return Radian(rawValue: acschValue)
    }
    
    public static func acsch(_ value: Float) throws -> Radian {
        let acschValue: Double = try acsch(Double(value))
        return Radian(rawValue: acschValue)
    }
    
    #if !os(Linux)
    static func acsch(_ value: CGFloat) throws -> CGFloat {
        let acschValue: Double = try acsch(Double(value))
        return CGFloat(acschValue)
    }
    
    public static func acsch(_ value: CGFloat) throws -> Radian {
        let acschValue: CGFloat = try acsch(value)
        return Radian(cgFloat: acschValue)
    }
    #endif
    
    // MARK: Validation
    
    static func validate(value: Double,
                         for function: TrigonometricFunction) throws {
        let checker = try TrigonometricArgumentsChecker(value: value, function: function)
        try checker.check()
    }

    static func validate(angle: Radian,
                         for function: TrigonometricFunction) throws {
        let checker = try TrigonometricArgumentsChecker(angle: angle, function: function)
        try checker.check()
    }
    
    static func validate(value: Float,
                         for function: TrigonometricFunction) throws {
        try validate(value: Double(value), for: function)
    }
    
    #if !os(Linux)
    static func validate(value: CGFloat,
                         for function: TrigonometricFunction) throws {
        try validate(value: Double(value), for: function)
    }
    #endif
}

