//
//  Trigonometry+HyperbolicTrigonometricFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

extension Trigonometry {
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
        let tanh = GenericTrigonometry.tanh(angle.rawValue)
        return tanh
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
        try validate(value: angle.rawValue, for: .coth)
        let tanh = GenericTrigonometry.tanh(angle.rawValue)
        return 1.0 / tanh
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
}
