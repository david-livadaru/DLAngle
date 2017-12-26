//
//  Radian+Trigonometry.swift
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
    
    public convenience init(atan2Y y: Double, x: Double) throws {
        let rawValue: Double = try Trigonometry.atan2(y: y, x: x)
        self.init(rawValue: rawValue)
    }
    
    public convenience init(atan2Y y: Float, x: Float) throws {
        let rawValue: Double = try Trigonometry.atan2(y: Double(y), x: Double(x))
        self.init(rawValue: rawValue)
    }
    
    #if !os(Linux)
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
