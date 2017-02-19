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
    public convenience init(acos: Float80) {
        self.init(rawValue: Trigonometry.acos(acos))
    }
    
    public convenience init(acos: Float) {
        self.init(float: GenericTrigonometry.acos(acos))
    }
    
    public convenience init(acos: Double) {
        self.init(double: GenericTrigonometry.acos(acos))
    }
    
    #if !os(Linux)
    public convenience init(acos: CGFloat) {
        self.init(cgFloat: Trigonometry.acos(acos))
    }
    #endif
    
    public convenience init(acosh: Float80) {
        self.init(rawValue: Trigonometry.acosh(acosh))
    }
    
    public convenience init(acosh: Float) {
        self.init(float: GenericTrigonometry.acosh(acosh))
    }
    
    public convenience init(acosh: Double) {
        self.init(double: GenericTrigonometry.acosh(acosh))
    }
    
    #if !os(Linux)
    public convenience init(acosh: CGFloat) {
        self.init(cgFloat: Trigonometry.acosh(acosh))
    }
    #endif
    
    public convenience init(asin: Float80) {
        self.init(rawValue: Trigonometry.asin(asin))
    }
    
    public convenience init(asin: Float) {
        self.init(float: GenericTrigonometry.asin(asin))
    }
    
    public convenience init(asin: Double) {
        self.init(double: GenericTrigonometry.asin(asin))
    }
    
    #if !os(Linux)
    public convenience init(asin: CGFloat) {
        self.init(cgFloat: Trigonometry.asin(asin))
    }
    #endif
    
    public convenience init(asinh: Float80) {
        self.init(rawValue: Trigonometry.asinh(asinh))
    }
    
    public convenience init(asinh: Float) {
        self.init(float: GenericTrigonometry.asinh(asinh))
    }
    
    public convenience init(asinh: Double) {
        self.init(double: GenericTrigonometry.asinh(asinh))
    }
    
    #if !os(Linux)
    public convenience init(asinh: CGFloat) {
        self.init(cgFloat: Trigonometry.asinh(asinh))
    }
    #endif
    
    public convenience init(atan: Float80) {
        self.init(rawValue: Trigonometry.atan(atan))
    }
    
    public convenience init(atan: Float) {
        self.init(float: GenericTrigonometry.atan(atan))
    }
    
    public convenience init(atan: Double) {
        self.init(double: GenericTrigonometry.atan(atan))
    }
    
    #if !os(Linux)
    public convenience init(atan: CGFloat) {
        self.init(cgFloat: Trigonometry.atan(atan))
    }
    #endif
    
    public convenience init(atan2X x: Float80, y: Float80) {
        self.init(rawValue: Trigonometry.atan2(x: x, y: y))
    }
    
    public convenience init(atan2X x: Float, y: Float) {
        self.init(float: GenericTrigonometry.atan2(x: x, y: y))
    }
    
    public convenience init(atan2X x: Double, y: Double) {
        self.init(double: GenericTrigonometry.atan2(x: x, y: y))
    }
    
    #if !os(Linux)
    public convenience init(atan2X x: CGFloat, y: CGFloat) {
        self.init(cgFloat: Trigonometry.atan2(x: x, y: y))
    }
    #endif
    
    public convenience init(atanh: Float80) {
        self.init(rawValue: Trigonometry.atanh(atanh))
    }
    
    public convenience init(atanh: Float) {
        self.init(float: GenericTrigonometry.atanh(atanh))
    }
    
    public convenience init(atanh: Double) {
        self.init(double: GenericTrigonometry.atanh(atanh))
    }
    
    #if !os(Linux)
    public convenience init(atanh: CGFloat) {
        self.init(cgFloat: Trigonometry.atanh(atanh))
    }
    #endif
    
    public func cos() -> Float80 {
        return Trigonometry.cos(self)
    }
    
    public func cos() -> Float {
        return Trigonometry.cos(self)
    }
    
    public func cos() -> Double {
        return Trigonometry.cos(self)
    }
    
    #if !os(Linux)
    public func cos() -> CGFloat {
        return Trigonometry.cos(self)
    }
    #endif
    
    public func cosh() -> Float80 {
        return Trigonometry.cosh(self)
    }
    
    public func cosh() -> Float {
        return Trigonometry.cosh(self)
    }
    
    public func cosh() -> Double {
        return Trigonometry.cosh(self)
    }
    
    #if !os(Linux)
    public func cosh() -> CGFloat {
        return Trigonometry.cosh(self)
    }
    #endif
    
    public func sin() -> Float80 {
        return Trigonometry.sin(self)
    }
    
    public func sin() -> Float {
        return Trigonometry.sin(self)
    }
    
    public func sin() -> Double {
        return Trigonometry.sin(self)
    }
    
    #if !os(Linux)
    public func sin() -> CGFloat {
        return Trigonometry.sin(self)
    }
    #endif
    
    public func sinh() -> Float80 {
        return Trigonometry.sinh(self)
    }
    
    public func sinh() -> Float {
        return Trigonometry.sinh(self)
    }
    
    public func sinh() -> Double {
        return Trigonometry.sinh(self)
    }
    
    #if !os(Linux)
    public func sinh() -> CGFloat {
        return Trigonometry.sinh(self)
    }
    #endif
    
    public func tan() -> Float80 {
        return Trigonometry.tan(self)
    }
    
    public func tan() -> Float {
        return Trigonometry.tan(self)
    }
    
    public func tan() -> Double {
        return Trigonometry.tan(self)
    }
    
    #if !os(Linux)
    public func tan() -> CGFloat {
        return Trigonometry.tan(self)
    }
    #endif
    
    public func tanh() -> Float80 {
        return Trigonometry.tanh(self)
    }
    
    public func tanh() -> Float {
        return Trigonometry.tanh(self)
    }
    
    public func tanh() -> Double {
        return Trigonometry.tanh(self)
    }
    
    #if !os(Linux)
    public func tanh() -> CGFloat {
        return Trigonometry.tanh(self)
    }
    #endif
    
    public func cot() -> Float80 {
        return Trigonometry.cot(self)
    }
    
    public func cot() -> Float {
        return Trigonometry.cot(self)
    }
    
    public func cot() -> Double {
        return Trigonometry.cot(self)
    }
    
    #if !os(Linux)
    public func cot() -> CGFloat {
        return Trigonometry.cot(self)
    }
    #endif
    
    public func coth() -> Float80 {
        return Trigonometry.coth(self)
    }
    
    public func coth() -> Float {
        return Trigonometry.coth(self)
    }
    
    public func coth() -> Double {
        return Trigonometry.coth(self)
    }
    
    #if !os(Linux)
    public func coth() -> CGFloat {
        return Trigonometry.coth(self)
    }
    #endif
    
    public func cosec() -> Float80 {
        return Trigonometry.cosec(self)
    }
    
    public func cosec() -> Float {
        return Trigonometry.cosec(self)
    }
    
    public func cosec() -> Double {
        return Trigonometry.cosec(self)
    }
    
    #if !os(Linux)
    public func cosec() -> CGFloat {
        return Trigonometry.cosec(self)
    }
    #endif
    
    public func sec() -> Float80 {
        return Trigonometry.sec(self)
    }
    
    public func sec() -> Float {
        return Trigonometry.sec(self)
    }
    
    public func sec() -> Double {
        return Trigonometry.sec(self)
    }
    
    #if !os(Linux)
    public func sec() -> CGFloat {
        return Trigonometry.sec(self)
    }
    #endif
}