//
//  Trigonometry+InverseHyperbolicTrigonometricFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

extension Trigonometry {
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
}
