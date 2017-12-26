//
//  Trigonometry+InverseTrigonometricFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

extension Trigonometry {
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

    // swiftlint:disable:next identifier_name
    static func atan2(y: Double, x: Double) throws -> Double {
        let atan2Checker = Atan2ArgumentsChecker(y: y, x: x)
        try atan2Checker.check()

        let angle = GenericTrigonometry.atan2(y: y, x: x)
        return angle
    }

    // swiftlint:disable:next identifier_name
    public static func atan2(y: Double, x: Double) throws -> Radian {
        let atanValue: Double = try atan2(y: y, x: x)
        return Radian(rawValue: atanValue)
    }

    // swiftlint:disable:next identifier_name
    public static func atan2(y: Float, x: Float) throws -> Radian {
        let atanValue: Double = try atan2(y: Double(y), x: Double(x))
        return Radian(rawValue: atanValue)
    }

    #if !os(Linux)
    // swiftlint:disable:next identifier_name
    static func atan2(y: CGFloat, x: CGFloat) throws -> CGFloat {
        let atan2Checker = Atan2ArgumentsChecker(y: Double(y), x: Double(x))
        try atan2Checker.check()

        let angle = GenericTrigonometry.atan2(y: Double(y), x: Double(x))
        return CGFloat(angle)
    }

    // swiftlint:disable:next identifier_name
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
}
