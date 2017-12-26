//
//  Radian+InverseTrigonometricFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

public extension Radian {
    // MARK: Inverse trigonometric functions

    public convenience init(asin: Double) throws {
        let rawValue: Double = try Trigonometry.asin(asin)
        self.init(rawValue: rawValue)
    }

    public convenience init(asin: Float) throws {
        let rawValue: Double = try Trigonometry.asin(Double(asin))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(asin: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.asin(asin)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(acos: Double) throws {
        let rawValue: Double = try Trigonometry.acos(acos)
        self.init(rawValue: rawValue)
    }

    public convenience init(acos: Float) throws {
        let rawValue: Double = try Trigonometry.acos(Double(acos))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(acos: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acos(acos)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(atan: Double) throws {
        let rawValue: Double = try Trigonometry.atan(atan)
        self.init(rawValue: rawValue)
    }

    public convenience init(atan: Float) throws {
        let rawValue: Double = try Trigonometry.atan(Double(atan))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(atan: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.atan(atan)
        self.init(cgFloat: rawValue)
    }
    #endif

    // swiftlint:disable:next identifier_name
    public convenience init(atan2Y y: Double, x: Double) throws {
        let rawValue: Double = try Trigonometry.atan2(y: y, x: x)
        self.init(rawValue: rawValue)
    }

    // swiftlint:disable:next identifier_name
    public convenience init(atan2Y y: Float, x: Float) throws {
        let rawValue: Double = try Trigonometry.atan2(y: Double(y), x: Double(x))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    // swiftlint:disable:next identifier_name
    public convenience init(atan2Y y: CGFloat, x: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.atan2(y: y, x: x)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(acot: Double) throws {
        let rawValue: Double = try Trigonometry.acot(acot)
        self.init(rawValue: rawValue)
    }

    public convenience init(acot: Float) throws {
        let rawValue: Double = try Trigonometry.acot(Double(acot))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(acot: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acot(acot)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(asec: Double) throws {
        let rawValue: Double = try Trigonometry.asec(asec)
        self.init(rawValue: rawValue)
    }

    public convenience init(asec: Float) throws {
        let rawValue: Double = try Trigonometry.asec(Double(asec))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(asec: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.asec(asec)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(acsc: Double) throws {
        let rawValue: Double = try Trigonometry.acsc(acsc)
        self.init(rawValue: rawValue)
    }

    public convenience init(acsc: Float) throws {
        let rawValue: Double = try Trigonometry.acsc(Double(acsc))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(acsc: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acsc(acsc)
        self.init(cgFloat: rawValue)
    }
    #endif

    // MARK: Inverse hyperbolic functions

    public convenience init(asinh: Double) {
        self.init(rawValue: Trigonometry.asinh(asinh))
    }

    public convenience init(asinh: Float) {
        self.init(float: GenericTrigonometry.asinh(asinh))
    }

    #if !os(Linux)
    public convenience init(asinh: CGFloat) {
        self.init(cgFloat: Trigonometry.asinh(asinh))
    }
    #endif

    public convenience init(acosh: Double) throws {
        let rawValue: Double = try Trigonometry.acosh(acosh)
        self.init(rawValue: rawValue)
    }

    public convenience init(acosh: Float) throws {
        let rawValue: Double = try Trigonometry.acosh(Double(acosh))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(acosh: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acosh(acosh)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(atanh: Double) throws {
        let rawValue: Double = try Trigonometry.atanh(atanh)
        self.init(rawValue: rawValue)
    }

    public convenience init(atanh: Float) throws {
        let rawValue: Double = try Trigonometry.atanh(Double(atanh))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(atanh: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.atanh(atanh)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(acoth: Double) throws {
        let rawValue: Double = try Trigonometry.acoth(acoth)
        self.init(rawValue: rawValue)
    }

    public convenience init(acoth: Float) throws {
        let rawValue: Double = try Trigonometry.acoth(Double(acoth))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(acoth: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acoth(acoth)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(asech: Double) throws {
        let rawValue: Double = try Trigonometry.asech(asech)
        self.init(rawValue: rawValue)
    }

    public convenience init(asech: Float) throws {
        let rawValue: Double = try Trigonometry.asech(Double(asech))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(asech: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.asech(asech)
        self.init(cgFloat: rawValue)
    }
    #endif

    public convenience init(acsch: Double) throws {
        let rawValue: Double = try Trigonometry.acsch(acsch)
        self.init(rawValue: rawValue)
    }

    public convenience init(acsch: Float) throws {
        let rawValue: Double = try Trigonometry.acsch(Double(acsch))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    public convenience init(acsch: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acsch(acsch)
        self.init(cgFloat: rawValue)
    }
#endif
}
