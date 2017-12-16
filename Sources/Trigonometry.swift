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
    
    public static func sin(_ angle: Radian) -> Double {
        let sin = GenericTrigonometry.sin(angle.rawValue)
        return sin
    }
    
    public static func sin(_ angle: Radian) -> Float {
        return GenericTrigonometry.sin(angle.float)
    }
    
    #if !os(Linux)
    public static func sin(_ angle: Radian) -> CGFloat {
        let sin = GenericTrigonometry.sin(angle.rawValue)
        return CGFloat(sin)
    }
    #endif
    
    public static func cos(_ angle: Radian) -> Double {
        let cos = GenericTrigonometry.cos(angle.rawValue)
        return cos
    }
    
    public static func cos(_ angle: Radian) -> Float {
        return GenericTrigonometry.cos(angle.float)
    }
    
    #if !os(Linux)
    public static func cos(_ angle: Radian) -> CGFloat {
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
        return 1.0 / cos(angle)
    }
    
    public static func sec(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .sec)
        return 1.0 / cos(angle)
    }
    
    #if !os(Linux)
    public static func sec(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .sec)
        return 1.0 / cos(angle)
    }
    #endif
    
    public static func cosec(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .cosec)
        return 1.0 / sin(angle)
    }
    
    public static func cosec(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .cosec)
        return 1.0 / sin(angle)
    }
    
    #if !os(Linux)
    public static func cosec(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .cosec)
        return 1.0 / sin(angle)
    }
    #endif
    
    // MARK: Inverse trigonometric functions
    
    static func asin(_ value: Double) -> Double {
        let angle = GenericTrigonometry.asin(value)
        return angle
    }
    
    public static func asin(_ value: Double) throws -> Radian {
        try validate(value: value, for: .asin)
        return Radian(rawValue: asin(value))
    }
    
    public static func asin(_ value: Float) throws -> Radian {
        try validate(value: value, for: .asin)
        return Radian(float: GenericTrigonometry.asin(value))
    }
    
    #if !os(Linux)
    static func asin(_ value: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.asin(Double(value))
        return CGFloat(angle)
    }
    
    public static func asin(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .asin)
        return Radian(cgFloat: asin(value))
    }
    #endif
    
    static func acos(_ value: Double) -> Double {
        let angle = GenericTrigonometry.acos(value)
        return angle
    }
    
    public static func acos(_ value: Double) throws -> Radian {
        try validate(value: value, for: .acos)
        return Radian(rawValue: acos(value))
    }
    
    public static func acos(_ value: Float) throws -> Radian {
        try validate(value: value, for: .acos)
        return Radian(float: GenericTrigonometry.acos(value))
    }
    
    #if !os(Linux)
    static func acos(_ value: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.acos(Double(value))
        return CGFloat(angle)
    }
    
    public static func acos(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .acos)
        return Radian(cgFloat: acos(value))
    }
    #endif
    
    static func atan(_ value: Double) -> Double {
        let angle = GenericTrigonometry.atan(value)
        return angle
    }
    
    public static func atan(_ value: Double) -> Radian {
        return Radian(rawValue: atan(value))
    }
    
    public static func atan(_ value: Float) -> Radian {
        return Radian(float: GenericTrigonometry.atan(value))
    }
    
    #if !os(Linux)
    static func atan(_ value: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.atan(Double(value))
        return CGFloat(angle)
    }
    
    public static func atan(_ value: CGFloat) -> Radian {
        return Radian(cgFloat: atan(value))
    }
    #endif
    
    static func atan2(y: Double, x: Double) -> Double {
        let angle = GenericTrigonometry.atan2(y: y, x: x)
        return angle
    }
    
    public static func atan2(y: Double, x: Double) throws -> Radian {
        let atan2Checker = Atan2ArgumentsChecker(y: y, x: x)
        try atan2Checker.check()
        return Radian(rawValue: atan2(y: y, x: x))
    }
    
    public static func atan2(y: Float, x: Float) throws -> Radian {
        let atan2Checker = Atan2ArgumentsChecker(y: Double(y), x: Double(x))
        try atan2Checker.check()
        let angle = GenericTrigonometry.atan2(y: y, x: x)
        return Radian(float: angle)
    }
    
    #if !os(Linux)
    static func atan2(y: CGFloat, x: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.atan2(y: Double(y), x: Double(x))
        return CGFloat(angle)
    }
    
    public static func atan2(y: CGFloat, x: CGFloat) throws -> Radian {
        let atan2Checker = Atan2ArgumentsChecker(y: Double(y), x: Double(x))
        try atan2Checker.check()
        return Radian(cgFloat: atan2(y: y, x: x))
    }
    #endif
    
    static func acot(_ value: Double) -> Double {
        return Double.pi / 2 - atan(value)
    }
    
    public static func acot(_ value: Double) throws -> Radian {
        try validate(value: value, for: .acot)
        return Radian(rawValue: acot(value))
    }
    
    public static func acot(_ value: Float) throws -> Radian {
        try validate(value: value, for: .acot)
        return Radian(rawValue: acot(Double(value)))
    }
    
    #if !os(Linux)
    static func acot(_ value: CGFloat) -> CGFloat {
        let doubleValue = Double(value)
        let acotValue: Double = acot(doubleValue)
        let angle = CGFloat(acotValue)
        return CGFloat(angle)
    }
    
    public static func acot(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .acot)
        return Radian(cgFloat: acot(value))
    }
    #endif
    
    static func asec(_ value: Double) -> Double {
        return acos(1.0 / value)
    }
    
    public static func asec(_ value: Double) throws -> Radian {
        try validate(value: value, for: .asec)
        return Radian(rawValue: asec(value))
    }
    
    public static func asec(_ value: Float) throws -> Radian {
        try validate(value: value, for: .asec)
        return Radian(rawValue: asec(Double(value)))
    }
    
    #if !os(Linux)
    static func asec(_ value: CGFloat) -> CGFloat {
        let doubleValue = Double(value)
        let acotValue: Double = asec(doubleValue)
        let angle = CGFloat(acotValue)
        return CGFloat(angle)
    }
    
    public static func asec(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .asec)
        return Radian(cgFloat: asec(value))
    }
    #endif
    
    static func acosec(_ value: Double) -> Double {
        return asin(1.0 / value)
    }
    
    public static func acosec(_ value: Double) throws -> Radian {
        try validate(value: value, for: .acosec)
        return Radian(rawValue: acosec(value))
    }
    
    public static func acosec(_ value: Float) throws -> Radian {
        try validate(value: value, for: .acosec)
        return Radian(rawValue: acosec(Double(value)))
    }
    
    #if !os(Linux)
    static func acosec(_ value: CGFloat) -> CGFloat {
        let doubleValue = Double(value)
        let acotValue: Double = acosec(doubleValue)
        let angle = CGFloat(acotValue)
        return CGFloat(angle)
    }
    
    public static func acosec(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .acosec)
        return Radian(cgFloat: acosec(value))
    }
    #endif
    
    // MARK: Hyperbolic functions
    
    public static func sinh(_ angle: Radian) -> Double {
        let sinh = GenericTrigonometry.sinh(angle.rawValue)
        return sinh
    }
    
    public static func sinh(_ angle: Radian) -> Float {
        return GenericTrigonometry.sinh(angle.float)
    }
    
    #if !os(Linux)
    public static func sinh(_ angle: Radian) -> CGFloat {
        let sinh = GenericTrigonometry.sinh(angle.rawValue)
        return CGFloat(sinh)
    }
    #endif
    
    public static func cosh(_ angle: Radian) -> Double {
        let cosh = GenericTrigonometry.cosh(angle.rawValue)
        return cosh
    }
    
    public static func cosh(_ angle: Radian) -> Float {
        return GenericTrigonometry.cosh(angle.float)
    }
    
    #if !os(Linux)
    public static func cosh(_ angle: Radian) -> CGFloat {
        let cosh = GenericTrigonometry.cosh(angle.rawValue)
        return CGFloat(cosh)
    }
    #endif
    
    public static func tanh(_ angle: Radian) -> Double {
        let tanh = GenericTrigonometry.tanh(angle.rawValue)
        return tanh
    }
    
    public static func tanh(_ angle: Radian) -> Float {
        return GenericTrigonometry.tanh(angle.float)
    }
    
    #if !os(Linux)
    public static func tanh(_ angle: Radian) -> CGFloat {
        let tanh = GenericTrigonometry.tanh(angle.rawValue)
        return CGFloat(tanh)
    }
    #endif
    
    public static func coth(_ angle: Radian) throws -> Double {
        try validate(value: angle.rawValue, for: .coth)
        let tanh = GenericTrigonometry.tanh(angle.rawValue)
        return 1.0 / tanh
    }
    
    public static func coth(_ angle: Radian) throws -> Float {
        try validate(value: angle.rawValue, for: .coth)
        return 1.0 / GenericTrigonometry.tanh(angle.float)
    }
    
    #if !os(Linux)
    public static func coth(_ angle: Radian) throws -> CGFloat {
        try validate(value: angle.rawValue, for: .coth)
        let tanh = GenericTrigonometry.tanh(angle.rawValue)
        return 1.0 / CGFloat(tanh)
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
    
    public static func cosech(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .cosech)
        return 1.0 / sinh(angle)
    }
    
    public static func cosech(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .cosech)
        return 1.0 / sinh(angle)
    }
    
    #if !os(Linux)
    public static func cosech(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .cosech)
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
    
    static func acosh(_ value: Double) -> Double {
        let angle = GenericTrigonometry.acosh(value)
        return angle
    }
    
    public static func acosh(_ value: Double) throws -> Radian {
        try validate(value: value, for: .acosh)
        return Radian(rawValue: acosh(value))
    }
    
    public static func acosh(_ value: Float) throws -> Radian {
        try validate(value: value, for: .acosh)
        return Radian(float: GenericTrigonometry.acosh(value))
    }
    
    #if !os(Linux)
    static func acosh(_ value: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.acosh(Double(value))
        return CGFloat(angle)
    }
    
    public static func acosh(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .acosh)
        return Radian(cgFloat: acosh(value))
    }
    #endif
    
    static func atanh(_ value: Double) -> Double {
        let angle = GenericTrigonometry.atanh(value)
        return angle
    }
    
    public static func atanh(_ value: Double) throws -> Radian {
        try validate(value: value, for: .atanh)
        return Radian(rawValue: atanh(value))
    }
    
    public static func atanh(_ value: Float) throws -> Radian {
        try validate(value: value, for: .atanh)
        return Radian(float: GenericTrigonometry.atanh(value))
    }
    
    #if !os(Linux)
    static func atanh(_ value: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.atanh(Double(value))
        return CGFloat(angle)
    }
    
    public static func atanh(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .atanh)
        return Radian(cgFloat: atanh(value))
    }
    #endif
    
    static func acoth(_ value: Double) -> Double {
        return log((value + 1) / (value - 1)) / 2.0
    }
    
    public static func acoth(_ value: Double) throws -> Radian {
        try validate(value: value, for: .acoth)
        return Radian(rawValue: acoth(value))
    }
    
    public static func acoth(_ value: Float) throws -> Radian {
        try validate(value: value, for: .acoth)
        return Radian(rawValue: acoth(Double(value)))
    }
    
    #if !os(Linux)
    static func acoth(_ value: CGFloat) -> CGFloat {
        let angle: Double = acoth(Double(value))
        return CGFloat(angle)
    }
    
    public static func acoth(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .acoth)
        return Radian(cgFloat: acoth(value))
    }
    #endif
    
    static func asech(_ value: Double) -> Double {
        return log(1.0 / value + sqrt(1.0 / value - 1.0) * sqrt(1.0 / value + 1.0))
    }
    
    public static func asech(_ value: Double) throws -> Radian {
        try validate(value: value, for: .asech)
        return Radian(rawValue: asech(value))
    }
    
    public static func asech(_ value: Float) throws -> Radian {
        try validate(value: value, for: .asech)
        return Radian(rawValue: asech(Double(value)))
    }
    
    #if !os(Linux)
    static func asech(_ value: CGFloat) -> CGFloat {
        let angle: Double = asech(Double(value))
        return CGFloat(angle)
    }
    
    public static func asech(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .asech)
        return Radian(cgFloat: asech(value))
    }
    #endif
    
    static func acosech(_ value: Double) -> Double {
        return log(1.0 / value + sqrt(1.0 / pow(value, 2.0) + 1.0))
    }
    
    public static func acosech(_ value: Double) throws -> Radian {
        try validate(value: value, for: .acosech)
        return Radian(rawValue: acosech(value))
    }
    
    public static func acosech(_ value: Float) throws -> Radian {
        try validate(value: value, for: .acosech)
        return Radian(rawValue: acosech(Double(value)))
    }
    
    #if !os(Linux)
    static func acosech(_ value: CGFloat) -> CGFloat {
        let angle: Double = acosech(Double(value))
        return CGFloat(angle)
    }
    
    public static func acosech(_ value: CGFloat) throws -> Radian {
        try validate(value: value, for: .acosech)
        return Radian(cgFloat: atanh(value))
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

