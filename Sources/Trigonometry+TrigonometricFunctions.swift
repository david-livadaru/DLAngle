//
//  Trigonometry+TrigonometricFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

extension Trigonometry {
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
}
