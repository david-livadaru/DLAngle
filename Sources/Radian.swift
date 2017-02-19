//
//  Degree.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

/// A concrete implementation for radian angles. 
/// Provides convience initializers and functions for trigonometric functions.
public final class Radian: Angle, Comparable, AngleType {
    public static let normalizationValue: Float80 = 2 * Float80.pi
    
    // MARK: Initializers
    
    public convenience init(degrees: Float80) {
        let radians: Float80 = degrees / 180 * Float80.pi
        self.init(rawValue: radians)
    }
    
    public convenience init(degrees: Float) {
        let radians: Float = degrees / 180 * Float.pi
        self.init(float: radians)
    }
    
    public convenience init(degrees: Double) {
        let radians: Double = degrees / 180 * Double.pi
        self.init(double: radians)
    }
    
    #if !os(Linux)
    public convenience init(degrees: CGFloat) {
        let radians: CGFloat = degrees / 180 * CGFloat.pi
        self.init(cgFloat: radians)
    }
    #endif

    public convenience init(degree: Degree) {
        self.init(degrees: degree.rawValue)
    }
    
    // MARK: AngleType
    
    public func normalize() {
        normalize(by: Radian.normalizationValue)
    }
    
    public func normalized() -> Radian {
        return normalized(by: Radian.normalizationValue)
    }
    
    // MARK: Operators
    
    public static func +(lhs: Radian, rhs: Radian) -> Radian {
        return add(lhs: lhs, rhs: rhs)
    }
    
    public static func +=(lhs: inout Radian, rhs: Radian) {
        addEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func -(lhs: Radian, rhs: Radian) -> Radian {
        return minus(lhs: lhs, rhs: rhs)
    }
    
    public static func -=(lhs: inout Radian, rhs: Radian) {
        minusEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func *(lhs: Radian, rhs: Float80) -> Radian {
        return multiply(angle: lhs, with: rhs)
    }
    
    public static func *(lhs: Radian, rhs: Float) -> Radian {
        return multiply(angle: lhs, with: rhs)
    }
    
    public static func *(lhs: Radian, rhs: Double) -> Radian {
        return multiply(angle: lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func *(lhs: Radian, rhs: CGFloat) -> Radian {
        return multiply(angle: lhs, with: rhs)
    }
    #endif
    
    public static func *(lhs: Float80, rhs: Radian) -> Radian {
        return multiply(value: lhs, with: rhs)
    }
    
    public static func *(lhs: Float, rhs: Radian) -> Radian {
        return multiply(value: lhs, with: rhs)
    }
    
    public static func *(lhs: Double, rhs: Radian) -> Radian {
        return multiply(value: lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func *(lhs: CGFloat, rhs: Radian) -> Radian {
        return multiply(value: lhs, with: rhs)
    }
    #endif
    
    public static func *=(lhs: inout Radian, rhs: Float80) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    
    public static func *=(lhs: inout Radian, rhs: Float) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    
    public static func *=(lhs: inout Radian, rhs: Double) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func *=(lhs: inout Radian, rhs: CGFloat) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    #endif
    
    public static func /(lhs: Radian, rhs: Float80) -> Radian {
        return divide(angle: lhs, with: rhs)
    }
    
    public static func /(lhs: Radian, rhs: Float) -> Radian {
        return divide(angle: lhs, with: rhs)
    }
    
    public static func /(lhs: Radian, rhs: Double) -> Radian {
        return divide(angle: lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func /(lhs: Radian, rhs: CGFloat) -> Radian {
        return divide(angle: lhs, with: rhs)
    }
    #endif
    
    public static func /(lhs: Float80, rhs: Radian) -> Radian {
        return divide(value: lhs, with: rhs)
    }
    
    public static func /(lhs: Float, rhs: Radian) -> Radian {
        return divide(value: lhs, with: rhs)
    }
    
    public static func /(lhs: Double, rhs: Radian) -> Radian {
        return divide(value: lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func /(lhs: CGFloat, rhs: Radian) -> Radian {
        return divide(value: lhs, with: rhs)
    }
    #endif
    
    public static func /=(lhs: inout Radian, rhs: Float80) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func /=(lhs: inout Radian, rhs: Float) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func /=(lhs: inout Radian, rhs: Double) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    
    #if !os(Linux)
    public static func /=(lhs: inout Radian, rhs: CGFloat) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    #endif
    
    public static func ==(lhs: Radian, rhs: Radian) -> Bool {
        return equal(lhs: lhs, rhs: rhs)
    }
    
    public static func <(lhs: Radian, rhs: Radian) -> Bool {
        return lessThan(lhs: lhs, rhs: rhs)
    }
}

