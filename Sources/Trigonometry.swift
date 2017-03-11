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
    static func acos(_ value: Float80) -> Float80 {
        let angle = GenericTrigonometry.acos(Double(value))
        return Float80(angle)
    }
    
    public static func acos(_ value: Float80) throws -> Radian {
        try validate(value: value, for: .acos)
        return Radian(rawValue: acos(value))
    }
    
    public static func acos(_ value: Float) throws -> Radian {
        try validate(value: value, for: .acos)
        return Radian(float: GenericTrigonometry.acos(value))
    }
    
    public static func acos(_ value: Double) throws -> Radian {
        try validate(value: value, for: .acos)
        return Radian(double: GenericTrigonometry.acos(value))
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
    
    static func acosh(_ value: Float80) -> Float80 {
        let angle = GenericTrigonometry.acosh(Double(value))
        return Float80(angle)
    }
    
    public static func acosh(_ value: Float80) -> Radian {
        return Radian(rawValue: acosh(value))
    }
    
    public static func acosh(_ value: Float) -> Radian {
        return Radian(float: GenericTrigonometry.acosh(value))
    }
    
    public static func acosh(_ value: Double) -> Radian {
        return Radian(double: GenericTrigonometry.acosh(value))
    }
    
    #if !os(Linux)
    static func acosh(_ value: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.acosh(Double(value))
        return CGFloat(angle)
    }
    
    public static func acosh(_ value: CGFloat) -> Radian {
        return Radian(cgFloat: acosh(value))
    }
    #endif
    
    static func asin(_ value: Float80) -> Float80 {
        let angle = GenericTrigonometry.asin(Double(value))
        return Float80(angle)
    }
    
    public static func asin(_ value: Float80) throws -> Radian {
        try validate(value: value, for: .asin)
        return Radian(rawValue: asin(value))
    }
    
    public static func asin(_ value: Float) throws -> Radian {
        try validate(value: value, for: .asin)
        return Radian(float: GenericTrigonometry.asin(value))
    }
    
    public static func asin(_ value: Double) throws -> Radian {
        try validate(value: value, for: .asin)
        return Radian(double: GenericTrigonometry.asin(value))
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
    
    static func asinh(_ value: Float80) -> Float80 {
        let angle = GenericTrigonometry.asinh(Double(value))
        return Float80(angle)
    }
    
    public static func asinh(_ value: Float80) -> Radian {
        return Radian(rawValue: asinh(value))
    }
    
    public static func asinh(_ value: Float) -> Radian {
        return Radian(float: GenericTrigonometry.asinh(value))
    }
    
    public static func asinh(_ value: Double) -> Radian {
        return Radian(double: GenericTrigonometry.asinh(value))
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
    
    static func atan(_ value: Float80) -> Float80 {
        let angle = GenericTrigonometry.atan(Double(value))
        return Float80(angle)
    }
    
    public static func atan(_ value: Float80) -> Radian {
        return Radian(rawValue: atan(value))
    }
    
    public static func atan(_ value: Float) -> Radian {
        return Radian(float: GenericTrigonometry.atan(value))
    }
    
    public static func atan(_ value: Double) -> Radian {
        return Radian(double: GenericTrigonometry.atan(value))
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
    
    static func atan2(x: Float80, y: Float80) -> Float80 {
        let angle = GenericTrigonometry.atan2(x: Double(x), y: Double(y))
        return Float80(angle)
    }
    
    public static func atan2(x: Float80, y: Float80) throws -> Radian {
        try validate(value: x, for: .atan2)
        return Radian(rawValue: atan2(x: x, y: y))
    }
    
    public static func atan2(x: Float, y: Float) throws -> Radian {
        try validate(value: x, for: .atan2)
        let angle = GenericTrigonometry.atan2(x: x, y: y)
        return Radian(float: angle)
    }
    
    public static func atan2(x: Double, y: Double) throws -> Radian {
        try validate(value: x, for: .atan2)
        let angle = GenericTrigonometry.atan2(x: x, y: y)
        return Radian(double: angle)
    }
    
    #if !os(Linux)
    static func atan2(x: CGFloat, y: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.atan2(x: Double(x), y: Double(y))
        return CGFloat(angle)
    }
    
    public static func atan2(x: CGFloat, y: CGFloat) throws -> Radian {
        try validate(value: x, for: .atan2)
        return Radian(cgFloat: atan2(x: x, y: y))
    }
    #endif
    
    static func atanh(_ value: Float80) -> Float80 {
        let angle = GenericTrigonometry.atanh(Double(value))
        return Float80(angle)
    }
    
    public static func atanh(_ value: Float80) -> Radian {
        return Radian(rawValue: atanh(value))
    }
    
    public static func atanh(_ value: Float) -> Radian {
        return Radian(float: GenericTrigonometry.atanh(value))
    }
    
    public static func atanh(_ value: Double) -> Radian {
        return Radian(double: GenericTrigonometry.atanh(value))
    }
    
    #if !os(Linux)
    static func atanh(_ value: CGFloat) -> CGFloat {
        let angle = GenericTrigonometry.atanh(Double(value))
        return CGFloat(angle)
    }
    
    public static func atanh(_ value: CGFloat) -> Radian {
        return Radian(cgFloat: atanh(value))
    }
    #endif
    
    public static func cos(_ angle: Radian) -> Float80 {
        let cos = GenericTrigonometry.cos(angle.double)
        return Float80(cos)
    }
    
    public static func cos(_ angle: Radian) -> Float {
        return GenericTrigonometry.cos(angle.float)
    }
    
    public static func cos(_ angle: Radian) -> Double {
        return GenericTrigonometry.cos(angle.double)
    }
    
    #if !os(Linux)
    public static func cos(_ angle: Radian) -> CGFloat {
        let cos = GenericTrigonometry.cos(angle.double)
        return CGFloat(cos)
    }
    #endif
    
    public static func cosh(_ angle: Radian) -> Float80 {
        let cosh = GenericTrigonometry.cosh(angle.double)
        return Float80(cosh)
    }
    
    public static func cosh(_ angle: Radian) -> Float {
        return GenericTrigonometry.cosh(angle.float)
    }
    
    public static func cosh(_ angle: Radian) -> Double {
        return GenericTrigonometry.cosh(angle.double)
    }
    
    #if !os(Linux)
    public static func cosh(_ angle: Radian) -> CGFloat {
        let cosh = GenericTrigonometry.cosh(angle.double)
        return CGFloat(cosh)
    }
    #endif
    
    public static func sin(_ angle: Radian) -> Float80 {
        let sin = GenericTrigonometry.sin(angle.double)
        return Float80(sin)
    }
    
    public static func sin(_ angle: Radian) -> Float {
        return GenericTrigonometry.sin(angle.float)
    }
    
    public static func sin(_ angle: Radian) -> Double {
        return GenericTrigonometry.sin(angle.double)
    }
    
    #if !os(Linux)
    public static func sin(_ angle: Radian) -> CGFloat {
        let sin = GenericTrigonometry.sin(angle.double)
        return CGFloat(sin)
    }
    #endif
    
    public static func sinh(_ angle: Radian) -> Float80 {
        let sinh = GenericTrigonometry.sinh(angle.double)
        return Float80(sinh)
    }
    
    public static func sinh(_ angle: Radian) -> Float {
        return GenericTrigonometry.sinh(angle.float)
    }
    
    public static func sinh(_ angle: Radian) -> Double {
        return GenericTrigonometry.sinh(angle.double)
    }
    
    #if !os(Linux)
    public static func sinh(_ angle: Radian) -> CGFloat {
        let sinh = GenericTrigonometry.sinh(angle.double)
        return CGFloat(sinh)
    }
    #endif
    
    public static func tan(_ angle: Radian) throws -> Float80 {
        try validate(angle: angle, for: .tan)
        let tan = GenericTrigonometry.tan(angle.double)
        return Float80(tan)
    }
    
    public static func tan(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .tan)
        return GenericTrigonometry.tan(angle.float)
    }
    
    public static func tan(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .tan)
        return GenericTrigonometry.tan(angle.double)
    }
    
    #if !os(Linux)
    public static func tan(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .tan)
        let tan = GenericTrigonometry.tan(angle.double)
        return CGFloat(tan)
    }
    #endif
    
    public static func tanh(_ angle: Radian) -> Float80 {
        let tanh = GenericTrigonometry.tanh(angle.double)
        return Float80(tanh)
    }
    
    public static func tanh(_ angle: Radian) -> Float {
        return GenericTrigonometry.tanh(angle.float)
    }
    
    public static func tanh(_ angle: Radian) -> Double {
        return GenericTrigonometry.tanh(angle.double)
    }
    
    #if !os(Linux)
    public static func tanh(_ angle: Radian) -> CGFloat {
        let tanh = GenericTrigonometry.tanh(angle.double)
        return CGFloat(tanh)
    }
    #endif
    
    // MARK: Additional functions
    
    public static func cot(_ angle: Radian) throws -> Float80 {
        try validate(angle: angle, for: .cot)
        let cot = 1.0 / GenericTrigonometry.tan(angle.double)
        return Float80(cot)
    }
    
    public static func cot(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .cot)
        return 1.0 / GenericTrigonometry.tan(angle.float)
    }
    
    public static func cot(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .cot)
        return 1.0 / GenericTrigonometry.tan(angle.double)
    }
    
    #if !os(Linux)
    public static func cot(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .cot)
        let cot = GenericTrigonometry.tan(angle.double)
        return 1.0 / CGFloat(cot)
    }
    #endif
    
    public static func coth(_ angle: Radian) -> Float80 {
        let tanh = GenericTrigonometry.tanh(angle.double)
        return 1.0 / Float80(tanh)
    }
    
    public static func coth(_ angle: Radian) -> Float {
        return 1.0 / GenericTrigonometry.tanh(angle.float)
    }
    
    public static func coth(_ angle: Radian) -> Double {
        return 1.0 / GenericTrigonometry.tanh(angle.double)
    }
    
    #if !os(Linux)
    public static func coth(_ angle: Radian) -> CGFloat {
        let tanh = GenericTrigonometry.tanh(angle.double)
        return 1.0 / CGFloat(tanh)
    }
    #endif
    
    public static func cosec(_ angle: Radian) throws -> Float80 {
        try validate(angle: angle, for: .cosec)
        return 1.0 / sin(angle)
    }
    
    public static func cosec(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .cosec)
        return 1.0 / sin(angle)
    }
    
    public static func cosec(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .cosec)
        return 1.0 / sin(angle)
    }
    
    #if !os(Linux)
    public static func cosec(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .cosec)
        return 1.0 / sin(angle)
    }
    #endif
    
    public static func sec(_ angle: Radian) throws -> Float80 {
        try validate(angle: angle, for: .sec)
        return 1.0 / cos(angle)
    }
    
    public static func sec(_ angle: Radian) throws -> Float {
        try validate(angle: angle, for: .sec)
        return 1.0 / cos(angle)
    }
    
    public static func sec(_ angle: Radian) throws -> Double {
        try validate(angle: angle, for: .sec)
        return 1.0 / cos(angle)
    }
    
    #if !os(Linux)
    public static func sec(_ angle: Radian) throws -> CGFloat {
        try validate(angle: angle, for: .sec)
        return 1.0 / cos(angle)
    }
    #endif
    
    // MARK: Validation
    
    static func validate(value: Float80,
                         for function: TrigonometricArgumentsChecker.TrigonometricFunction) throws {
        let checker = try TrigonometricArgumentsChecker(value: Double(value), function: function)
        if checker.check() == false {
            throw AngleError(reason: "Argument '\(value)' is not defined for function '\(TrigonometricArgumentsChecker.TrigonometricFunction.acos)'.")
        }
    }
    
    static func validate(angle: Radian,
                         for function: TrigonometricArgumentsChecker.TrigonometricFunction) throws {
        let checker = try TrigonometricArgumentsChecker(angle: angle, function: function)
        if checker.check() == false {
            throw AngleError(reason: "Argument '\(angle)' is not defined for function '\(TrigonometricArgumentsChecker.TrigonometricFunction.acos)'.")
        }
    }
    
    static func validate(value: Double,
                         for function: TrigonometricArgumentsChecker.TrigonometricFunction) throws {
        try validate(value: Float80(value), for: function)
    }
    
    static func validate(value: Float,
                         for function: TrigonometricArgumentsChecker.TrigonometricFunction) throws {
        try validate(value: Float80(value), for: function)
    }
    
    #if !os(Linux)
    static func validate(value: CGFloat,
                         for function: TrigonometricArgumentsChecker.TrigonometricFunction) throws {
        try validate(value: Double(value), for: function)
    }
    #endif
}

