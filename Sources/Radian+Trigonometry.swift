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
    
    public convenience init(acosh: Double) {
        self.init(rawValue: Trigonometry.acosh(acosh))
    }
    
    public convenience init(acosh: Float) {
        self.init(float: GenericTrigonometry.acosh(acosh))
    }
    
    #if !os(Linux)
    public convenience init(acosh: CGFloat) {
        self.init(cgFloat: Trigonometry.acosh(acosh))
    }
    #endif
    
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
        self.init(cgFloat: Trigonometry.asin(asin))
    }
    #endif
    
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
    
    public convenience init(atanh: Double) {
        self.init(rawValue: Trigonometry.atanh(atanh))
    }
    
    public convenience init(atanh: Float) {
        self.init(float: GenericTrigonometry.atanh(atanh))
    }
    
    #if !os(Linux)
    public convenience init(atanh: CGFloat) {
        self.init(cgFloat: Trigonometry.atanh(atanh))
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
}
