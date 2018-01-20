//
//  Angle.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

/// A class which provides an abstraction of the angle.
public class Angle {
    /// The internal representation of angle.
    public private (set) var rawValue: Double

    /// RawValue represented as Float.
    public var float: Float {
        return Float(rawValue)
    }

    #if !os(Linux)
    /// RawValue represented as CGFloat.
    public var cgFloat: CGFloat {
        return CGFloat(rawValue)
    }
    #endif

    /// The precision to use for equality.
    public static var equalityPrecision: Int {
        get {
            return _equalityPrecision
        }
        set {
            _equalityPrecision = min(newValue, 15)
        }
    }

    private static var _equalityPrecision: Int = 15
    private static var marginOfError: Double {
        let precision = Double(equalityPrecision)
        return Double(pow(10.0, -precision))
    }

    // MARK: Initializers

    /// Create an angle by providing raw value.
    ///
    /// - Parameter rawValue: The representation of angle.
    public required init(rawValue: Double) {
        self.rawValue = rawValue
    }

    /// Create an angle with 0.0 as raw value.
    public convenience init() {
        self.init(rawValue: 0.0)
    }

    /// Create an angle by providing raw value as Float.
    /// Note that the raw value will be converted to Double.
    ///
    /// - Parameter float: The representation of angle.
    public convenience init(float: Float) {
        self.init(rawValue: Double(float))
    }

    #if !os(Linux)
    /// Create an angle by providing raw value as CGFloat.
    /// Note that the raw value will be converted to Double.
    ///
    /// - Parameter cgFloat: The representation of angle.
    public convenience init(cgFloat: CGFloat) {
        self.init(rawValue: Double(cgFloat))
    }
    #endif

    // MARK: Normalization

    func normalize(by value: Double) {
        guard rawValue.isFinite else { return }

        rawValue = rawValue.truncatingRemainder(dividingBy: value)
        if rawValue < 0.0 {
            rawValue += value
        }
    }

    func normalized<A: Angle>(by value: Double) -> A {
        guard rawValue.isFinite else { return A(rawValue: rawValue) }

        let angle = A(rawValue: rawValue)
        angle.normalize(by: value)
        return angle
    }

    // MARK: Operations

    static func add<A: Angle>(lhs: A, rhs: A) -> A {
        return A(rawValue: lhs.rawValue + rhs.rawValue)
    }

    static func addEqual<A: Angle>(lhs: inout A, rhs: A) {
        lhs.rawValue += rhs.rawValue
    }

    static func minus<A: Angle>(lhs: A, rhs: A) -> A {
        return A(rawValue: lhs.rawValue - rhs.rawValue)
    }

    static func minusEqual<A: Angle>(lhs: inout A, rhs: A) {
        lhs.rawValue -= rhs.rawValue
    }

    static func multiply<A: Angle>(angle: A, with value: Double) -> A {
        return A(rawValue: angle.rawValue * value)
    }

    static func multiply<A: Angle>(angle: A, with value: Float) -> A {
        return A(rawValue: angle.rawValue * Double(value))
    }

    #if !os(Linux)
    static func multiply<A: Angle>(angle: A, with value: CGFloat) -> A {
        return A(rawValue: angle.rawValue * Double(Double(value)))
    }
    #endif

    static func multiply<A: Angle>(value: Double, with angle: A) -> A {
        return A(rawValue: value * angle.rawValue)
    }

    static func multiply<A: Angle>(value: Float, with angle: A) -> A {
        return A(rawValue: Double(value) * angle.rawValue)
    }

    #if !os(Linux)
    static func multiply<A: Angle>(value: CGFloat, with angle: A) -> A {
        return A(rawValue: Double(value) * angle.rawValue)
    }
    #endif

    static func multiplyEqual<A: Angle>(angle: inout A, with value: Double) {
        angle.rawValue *= value
    }

    static func multiplyEqual<A: Angle>(angle: inout A, with value: Float) {
        angle.rawValue *= Double(value)
    }

    #if !os(Linux)
    static func multiplyEqual<A: Angle>(angle: inout A, with value: CGFloat) {
        angle.rawValue *= Double(value)
    }
    #endif

    static func divide<A: Angle>(angle: A, with value: Double) -> A {
        return A(rawValue: angle.rawValue / value)
    }

    static func divide<A: Angle>(angle: A, with value: Float) -> A {
        return A(rawValue: angle.rawValue / Double(value))
    }

    #if !os(Linux)
    static func divide<A: Angle>(angle: A, with value: CGFloat) -> A {
        return A(rawValue: angle.rawValue / Double(value))
    }
    #endif

    static func divide<A: Angle>(value: Double, with angle: A) -> A {
        return A(rawValue: value / angle.rawValue)
    }

    static func divide<A: Angle>(value: Float, with angle: A) -> A {
        return A(rawValue: Double(value) / angle.rawValue)
    }

    #if !os(Linux)
    static func divide<A: Angle>(value: CGFloat, with angle: A) -> A {
        return A(rawValue: Double(value) / angle.rawValue)
    }
    #endif

    static func divideEqual<A: Angle>(lhs: inout A, rhs: Double) {
        lhs.rawValue /= rhs
    }

    static func divideEqual<A: Angle>(lhs: inout A, rhs: Float) {
        lhs.rawValue /= Double(rhs)
    }

    #if !os(Linux)
    static func divideEqual<A: Angle>(lhs: inout A, rhs: CGFloat) {
        lhs.rawValue /= Double(rhs)
    }
    #endif

    // MARK: Equality and Comparison

    static func equal<A: Angle>(lhs: A, rhs: A) -> Bool {
        let difference = abs(lhs.rawValue - rhs.rawValue)
        return difference < marginOfError
    }

    static func lessThan<A: Angle>(lhs: A, rhs: A) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}
