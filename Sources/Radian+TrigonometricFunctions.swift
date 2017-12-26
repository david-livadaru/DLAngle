//
//  Radian+TrigonometricFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 19/02/2017.
//
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

public extension Radian {
    // MARK: Trigonometric functions

    public func sin() throws -> Double {
        return try Trigonometry.sin(self)
    }

    public func sin() throws -> Float {
        return try Trigonometry.sin(self)
    }

    #if !os(Linux)
    public func sin() throws -> CGFloat {
        return try  Trigonometry.sin(self)
    }
    #endif

    public func cos() throws -> Double {
        return try Trigonometry.cos(self)
    }

    public func cos() throws -> Float {
        return try Trigonometry.cos(self)
    }

    #if !os(Linux)
    public func cos() throws -> CGFloat {
        return try Trigonometry.cos(self)
    }
    #endif

    public func tan() throws -> Double {
        return try Trigonometry.tan(self)
    }

    public func tan() throws -> Float {
        return try Trigonometry.tan(self)
    }

    #if !os(Linux)
    public func tan() throws -> CGFloat {
        return try Trigonometry.tan(self)
    }
    #endif

    public func cot() throws -> Double {
        return try Trigonometry.cot(self)
    }

    public func cot() throws -> Float {
        return try Trigonometry.cot(self)
    }

    #if !os(Linux)
    public func cot() throws -> CGFloat {
        return try Trigonometry.cot(self)
    }
    #endif

    public func sec() throws -> Double {
        return try Trigonometry.sec(self)
    }

    public func sec() throws -> Float {
        return try Trigonometry.sec(self)
    }

    #if !os(Linux)
    public func sec() throws -> CGFloat {
        return try Trigonometry.sec(self)
    }
    #endif

    public func csc() throws -> Double {
        return try Trigonometry.csc(self)
    }

    public func csc() throws -> Float {
        return try Trigonometry.csc(self)
    }

    #if !os(Linux)
    public func csc() throws -> CGFloat {
        return try Trigonometry.csc(self)
    }
    #endif

    // MARK: Hyperbolic functions

    public func sinh() -> Double {
        return Trigonometry.sinh(self)
    }

    public func sinh() -> Float {
        return Trigonometry.sinh(self)
    }

    #if !os(Linux)
    public func sinh() -> CGFloat {
        return Trigonometry.sinh(self)
    }
    #endif

    public func cosh() -> Double {
        return Trigonometry.cosh(self)
    }

    public func cosh() -> Float {
        return Trigonometry.cosh(self)
    }

    #if !os(Linux)
    public func cosh() -> CGFloat {
        return Trigonometry.cosh(self)
    }
    #endif

    public func tanh() -> Double {
        return Trigonometry.tanh(self)
    }

    public func tanh() -> Float {
        return Trigonometry.tanh(self)
    }

    #if !os(Linux)
    public func tanh() -> CGFloat {
        return Trigonometry.tanh(self)
    }
    #endif

    public func coth() throws -> Double {
        return try Trigonometry.coth(self)
    }

    public func coth() throws -> Float {
        return try Trigonometry.coth(self)
    }

    #if !os(Linux)
    public func coth() throws -> CGFloat {
        return try Trigonometry.coth(self)
    }
    #endif

    public func sech() -> Double {
        return Trigonometry.sech(self)
    }

    public func sech() -> Float {
        return Trigonometry.sech(self)
    }

    #if !os(Linux)
    public func sech() -> CGFloat {
        return Trigonometry.sech(self)
    }
    #endif

    public func csch() throws -> Double {
        return try Trigonometry.csch(self)
    }

    public func csch() throws -> Float {
        return try Trigonometry.csch(self)
    }

    #if !os(Linux)
    public func csch() throws -> CGFloat {
        return try Trigonometry.csch(self)
    }
    #endif
}
