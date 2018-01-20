//
//  Trigonometry+Validation.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

extension Trigonometry {
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
