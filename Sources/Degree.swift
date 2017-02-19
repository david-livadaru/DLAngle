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

/// A concrete implementation for degree angles.
public final class Degree: Angle, Comparable, AngleType {
    public static let normalizationValue: Float80 = 360
    
    // MARK: Initializers
    
    public convenience init(radians: Float80) {
        let degrees: Float80 = 180 * radians / Float80.pi
        self.init(rawValue: degrees)
    }
    
    public convenience init(radians: Float) {
        let degrees: Float = 180 * radians / Float.pi
        self.init(float: degrees)
    }
    
    public convenience init(radians: Double) {
        let degrees: Double = 180 * radians / Double.pi
        self.init(double: degrees)
    }
    
    #if !os(Linux)
    public convenience init(radians: CGFloat) {
        let degrees: CGFloat = 180 * radians / CGFloat.pi
        self.init(cgFloat: degrees)
    }
    #endif
    
    public convenience init(radian: Radian) {
        self.init(radians: radian.rawValue)
    }
    
    // MARK: Operators
    
    public static func +(lhs: Degree, rhs: Degree) -> Degree {
        return add(lhs: lhs, rhs: rhs)
    }
    
    public static func +=(lhs: inout Degree, rhs: Degree) {
        addEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func -(lhs: Degree, rhs: Degree) -> Degree {
        return minus(lhs: lhs, rhs: rhs)
    }
    
    public static func -=(lhs: inout Degree, rhs: Degree) {
        minusEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func *(lhs: Degree, rhs: Float80) -> Degree {
        return multiply(angle: lhs, with: rhs)
    }
    
    public static func *(lhs: Degree, rhs: Float) -> Degree {
        return multiply(angle: lhs, with: rhs)
    }
    
    public static func *(lhs: Degree, rhs: Double) -> Degree {
        return multiply(angle: lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func *(lhs: Degree, rhs: CGFloat) -> Degree {
        return multiply(angle: lhs, with: rhs)
    }
    #endif
    
    public static func *(lhs: Float80, rhs: Degree) -> Degree {
        return multiply(value: lhs, with: rhs)
    }
    
    public static func *(lhs: Float, rhs: Degree) -> Degree {
        return multiply(value: lhs, with: rhs)
    }
    
    public static func *(lhs: Double, rhs: Degree) -> Degree {
        return multiply(value: lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func *(lhs: CGFloat, rhs: Degree) -> Degree {
        return multiply(value: lhs, with: rhs)
    }
    #endif
    
    public static func *=(lhs: inout Degree, rhs: Float80) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    
    public static func *=(lhs: inout Degree, rhs: Float) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    
    public static func *=(lhs: inout Degree, rhs: Double) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func *=(lhs: inout Degree, rhs: CGFloat) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    #endif
    
    public static func /(lhs: Degree, rhs: Float80) -> Degree {
        return divide(angle: lhs, with: rhs)
    }
    
    public static func /(lhs: Degree, rhs: Float) -> Degree {
        return divide(angle: lhs, with: rhs)
    }
    
    public static func /(lhs: Degree, rhs: Double) -> Degree {
        return divide(angle: lhs, with: rhs)
    }
    
    #if !os(Linux)
    public static func /(lhs: Degree, rhs: CGFloat) -> Degree {
        return divide(angle: lhs, with: rhs)
    }
    #endif
    
    public static func /=(lhs: inout Degree, rhs: Float80) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func /=(lhs: inout Degree, rhs: Float) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func /=(lhs: inout Degree, rhs: Double) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    
    #if !os(Linux)
    public static func /=(lhs: inout Degree, rhs: CGFloat) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    #endif
    
    public static func ==(lhs: Degree, rhs: Degree) -> Bool {
        return equal(lhs: lhs, rhs: rhs)
    }
    
    public static func <(lhs: Degree, rhs: Degree) -> Bool {
        return lessThan(lhs: lhs, rhs: rhs)
    }
    
    // MARK: AngleType
    
    func normalize() {
        normalize(by: Degree.normalizationValue)
    }
    
    func normalized() -> Degree {
        return normalized(by: Degree.normalizationValue)
    }
}

