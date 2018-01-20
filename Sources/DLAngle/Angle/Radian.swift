//
//  Degree.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

/// A concrete implementation for radian angles. 
/// Provides convience initializers and functions for trigonometric functions.
public final class Radian: Angle, Comparable, NormalizedType {
    /// The value which is used to normalize a Radian angle.
    public static let normalizationValue: Double = 2 * Double.pi

    // MARK: Initializers

    /// Create a Radian angle with a provided raw value as degrees.
    /// The degrees will be converted into radians.
    ///
    /// - Parameter degrees: The raw value as degrees.
    public convenience init(degrees: Double) {
        let radians: Double = degrees / 180 * Double.pi
        self.init(rawValue: radians)
    }

    /// Create a Radian angle with a provided raw value as degrees.
    /// The degrees will be converted into radians.
    ///
    /// - Parameter degrees: The raw value as degrees.
    public convenience init(degrees: Float) {
        self.init(degrees: Double(degrees))
    }

    #if !os(Linux)
    /// Create a Radian angle with a provided raw value as degrees.
    /// The degrees will be converted into radians.
    ///
    /// - Parameter degrees: The raw value as degrees.
    public convenience init(degrees: CGFloat) {
        self.init(degrees: Double(degrees))
    }
    #endif

    /// Create a Radian angle with a provided raw value as degrees.
    /// The degrees will be converted into radians.
    ///
    /// - Parameter degree: The raw value as degrees.
    public convenience init(degree: Degree) {
        self.init(degrees: degree.rawValue)
    }

    // MARK: NormalizedType

    /// Normalize the angle. The raw value will be a value between [0, 2 * Double.pi).
    public func normalize() {
        normalize(by: Radian.normalizationValue)
    }

    /// Create a normalized angle. The angle's raw value will be a value between [0, 2 * Double.pi).
    ///
    /// - Returns: The normalized angle.
    public func normalized() -> Radian {
        return normalized(by: Radian.normalizationValue)
    }

    // MARK: Operators

    public static func + (lhs: Radian, rhs: Radian) -> Radian {
        return add(lhs: lhs, rhs: rhs)
    }

    public static func += (lhs: inout Radian, rhs: Radian) {
        addEqual(lhs: &lhs, rhs: rhs)
    }

    public static func - (lhs: Radian, rhs: Radian) -> Radian {
        return minus(lhs: lhs, rhs: rhs)
    }

    public static func -= (lhs: inout Radian, rhs: Radian) {
        minusEqual(lhs: &lhs, rhs: rhs)
    }

    public static func * (lhs: Radian, rhs: Double) -> Radian {
        return multiply(angle: lhs, with: rhs)
    }

    public static func * (lhs: Radian, rhs: Float) -> Radian {
        return multiply(angle: lhs, with: rhs)
    }

    #if !os(Linux)
    public static func * (lhs: Radian, rhs: CGFloat) -> Radian {
        return multiply(angle: lhs, with: rhs)
    }
    #endif

    public static func * (lhs: Double, rhs: Radian) -> Radian {
        return multiply(value: lhs, with: rhs)
    }

    public static func * (lhs: Float, rhs: Radian) -> Radian {
        return multiply(value: lhs, with: rhs)
    }

    #if !os(Linux)
    public static func * (lhs: CGFloat, rhs: Radian) -> Radian {
        return multiply(value: lhs, with: rhs)
    }
    #endif

    public static func *= (lhs: inout Radian, rhs: Double) {
        multiplyEqual(angle: &lhs, with: rhs)
    }

    public static func *= (lhs: inout Radian, rhs: Float) {
        multiplyEqual(angle: &lhs, with: rhs)
    }

    #if !os(Linux)
    public static func *= (lhs: inout Radian, rhs: CGFloat) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    #endif

    public static func / (lhs: Radian, rhs: Double) -> Radian {
        return divide(angle: lhs, with: rhs)
    }

    public static func / (lhs: Radian, rhs: Float) -> Radian {
        return divide(angle: lhs, with: rhs)
    }

    #if !os(Linux)
    public static func / (lhs: Radian, rhs: CGFloat) -> Radian {
        return divide(angle: lhs, with: rhs)
    }
    #endif

    public static func / (lhs: Double, rhs: Radian) -> Radian {
        return divide(value: lhs, with: rhs)
    }

    public static func / (lhs: Float, rhs: Radian) -> Radian {
        return divide(value: lhs, with: rhs)
    }

    #if !os(Linux)
    public static func / (lhs: CGFloat, rhs: Radian) -> Radian {
        return divide(value: lhs, with: rhs)
    }
    #endif

    public static func /= (lhs: inout Radian, rhs: Double) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }

    public static func /= (lhs: inout Radian, rhs: Float) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }

    #if !os(Linux)
    public static func /= (lhs: inout Radian, rhs: CGFloat) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    #endif

    public static func == (lhs: Radian, rhs: Radian) -> Bool {
        return equal(lhs: lhs, rhs: rhs)
    }

    public static func < (lhs: Radian, rhs: Radian) -> Bool {
        return lessThan(lhs: lhs, rhs: rhs)
    }
}
