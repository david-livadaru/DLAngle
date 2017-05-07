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
        try Trigonometry.validate(value: asin, for: .asin)
        self.init(rawValue: Trigonometry.asin(asin))
    }
    
    public convenience init(asin: Float) throws {
        try Trigonometry.validate(value: asin, for: .asin)
        self.init(float: GenericTrigonometry.asin(asin))
    }
    
    #if !os(Linux)
    public convenience init(asin: CGFloat) throws {
        try Trigonometry.validate(value: asin, for: .asin)
        self.init(cgFloat: Trigonometry.asin(asin))
    }
    #endif
    
    public convenience init(acos: Double) throws {
        try Trigonometry.validate(value: acos, for: .acos)
        self.init(rawValue: Trigonometry.acos(acos))
    }
    
    public convenience init(acos: Float) throws {
        try Trigonometry.validate(value: acos, for: .acos)
        self.init(float: GenericTrigonometry.acos(acos))
    }
    
    #if !os(Linux)
    public convenience init(acos: CGFloat) throws {
        try Trigonometry.validate(value: acos, for: .acos)
        self.init(cgFloat: Trigonometry.acos(acos))
    }
    #endif
    
    public convenience init(atan: Double) {
        self.init(rawValue: Trigonometry.atan(atan))
    }
    
    public convenience init(atan: Float) {
        self.init(float: GenericTrigonometry.atan(atan))
    }
    
    #if !os(Linux)
    public convenience init(atan: CGFloat) {
        self.init(cgFloat: Trigonometry.atan(atan))
    }
    #endif
    
    public convenience init(atan2X x: Double, y: Double) throws {
        try Trigonometry.validate(value: x, for: .atan2)
        self.init(rawValue: Trigonometry.atan2(x: x, y: y))
    }
    
    public convenience init(atan2X x: Float, y: Float) throws {
        try Trigonometry.validate(value: x, for: .atan2)
        self.init(float: GenericTrigonometry.atan2(x: x, y: y))
    }
    
    #if !os(Linux)
    public convenience init(atan2X x: CGFloat, y: CGFloat) throws {
        try Trigonometry.validate(value: x, for: .atan2)
        self.init(cgFloat: Trigonometry.atan2(x: x, y: y))
    }
    #endif
    
    public convenience init(acot: Double) throws {
        try Trigonometry.validate(value: acot, for: .acot)
        self.init(rawValue: Trigonometry.acot(acot))
    }
    
    public convenience init(acot: Float) throws {
        try Trigonometry.validate(value: acot, for: .acot)
        self.init(rawValue: Trigonometry.acot(Double(acot)))
    }
    
    #if !os(Linux)
    public convenience init(acot: CGFloat) throws {
        try Trigonometry.validate(value: acot, for: .acot)
        self.init(cgFloat: Trigonometry.acot(acot))
    }
    #endif
    
    public convenience init(asec: Double) throws {
        try Trigonometry.validate(value: asec, for: .asec)
        self.init(rawValue: Trigonometry.asec(asec))
    }
    
    public convenience init(asec: Float) throws {
        try Trigonometry.validate(value: asec, for: .asec)
        self.init(rawValue: Trigonometry.asec(Double(asec)))
    }
    
    #if !os(Linux)
    public convenience init(asec: CGFloat) throws {
        try Trigonometry.validate(value: asec, for: .asec)
        self.init(cgFloat: Trigonometry.asec(asec))
    }
    #endif
    
    public convenience init(acosec: Double) throws {
        try Trigonometry.validate(value: acosec, for: .acosec)
        self.init(rawValue: Trigonometry.acosec(acosec))
    }
    
    public convenience init(acosec: Float) throws {
        try Trigonometry.validate(value: acosec, for: .acosec)
        self.init(rawValue: Trigonometry.acosec(Double(acosec)))
    }
    
    #if !os(Linux)
    public convenience init(acosec: CGFloat) throws {
        try Trigonometry.validate(value: acosec, for: .acosec)
        self.init(cgFloat: Trigonometry.acosec(acosec))
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
        try Trigonometry.validate(value: acosh, for: .acosh)
        self.init(rawValue: Trigonometry.acosh(acosh))
    }
    
    public convenience init(acosh: Float) throws {
        try Trigonometry.validate(value: acosh, for: .acosh)
        self.init(float: GenericTrigonometry.acosh(acosh))
    }
    
    #if !os(Linux)
    public convenience init(acosh: CGFloat) throws {
        try Trigonometry.validate(value: acosh, for: .acosh)
        self.init(cgFloat: Trigonometry.acosh(acosh))
    }
    #endif
    
    public convenience init(atanh: Double) throws {
        try Trigonometry.validate(value: atanh, for: .atanh)
        self.init(rawValue: Trigonometry.atanh(atanh))
    }
    
    public convenience init(atanh: Float) throws {
        try Trigonometry.validate(value: atanh, for: .atanh)
        self.init(float: GenericTrigonometry.atanh(atanh))
    }
    
    #if !os(Linux)
    public convenience init(atanh: CGFloat) throws {
        try Trigonometry.validate(value: atanh, for: .atanh)
        self.init(cgFloat: Trigonometry.atanh(atanh))
    }
    #endif
    
    public convenience init(acoth: Double) throws {
        try Trigonometry.validate(value: acoth, for: .acoth)
        self.init(rawValue: Trigonometry.acoth(acoth))
    }
    
    public convenience init(acoth: Float) throws {
        try Trigonometry.validate(value: acoth, for: .acoth)
        self.init(rawValue: Trigonometry.acoth(Double(acoth)))
    }
    
    #if !os(Linux)
    public convenience init(acoth: CGFloat) throws {
        try Trigonometry.validate(value: acoth, for: .acoth)
        self.init(cgFloat: Trigonometry.acoth(acoth))
    }
    #endif
    
    public convenience init(asech: Double) throws {
        try Trigonometry.validate(value: asech, for: .asech)
        self.init(rawValue: Trigonometry.asech(asech))
    }
    
    public convenience init(asech: Float) throws {
        try Trigonometry.validate(value: asech, for: .asech)
        self.init(rawValue: Trigonometry.asech(Double(asech)))
    }
    
    #if !os(Linux)
    public convenience init(asech: CGFloat) throws {
        try Trigonometry.validate(value: asech, for: .asech)
        self.init(cgFloat: Trigonometry.asech(asech))
    }
    #endif
    
    public convenience init(acosech: Double) throws {
        try Trigonometry.validate(value: acosech, for: .acosech)
        self.init(rawValue: Trigonometry.acosech(acosech))
    }
    
    public convenience init(acosech: Float) throws {
        try Trigonometry.validate(value: acosech, for: .acosech)
        self.init(rawValue: Trigonometry.acosech(Double(acosech)))
    }
    
    #if !os(Linux)
    public convenience init(acosech: CGFloat) throws {
        try Trigonometry.validate(value: acosech, for: .acosech)
        self.init(cgFloat: Trigonometry.acosech(acosech))
    }
    #endif
    
    // MARK: Trigonometric functions
    
    public func sin() -> Double {
        return Trigonometry.sin(self)
    }
    
    public func sin() -> Float {
        return Trigonometry.sin(self)
    }
    
    #if !os(Linux)
    public func sin() -> CGFloat {
        return Trigonometry.sin(self)
    }
    #endif
    
    public func cos() -> Double {
        return Trigonometry.cos(self)
    }
    
    public func cos() -> Float {
        return Trigonometry.cos(self)
    }
    
    #if !os(Linux)
    public func cos() -> CGFloat {
        return Trigonometry.cos(self)
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
    
    public func cosec() throws -> Double {
        return try Trigonometry.cosec(self)
    }
    
    public func cosec() throws -> Float {
        return try Trigonometry.cosec(self)
    }
    
    #if !os(Linux)
    public func cosec() throws -> CGFloat {
        return try Trigonometry.cosec(self)
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
    
    public func cosech() throws -> Double {
        return try Trigonometry.cosech(self)
    }
    
    public func cosech() throws -> Float {
        return try Trigonometry.cosech(self)
    }
    
    #if !os(Linux)
    public func cosech() throws -> CGFloat {
        return try Trigonometry.cosech(self)
    }
    #endif
}
