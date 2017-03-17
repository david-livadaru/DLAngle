//
//  Angle.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

/// A class which provides an abstraction of the angle.
public class Angle {
    public private (set) var rawValue: Double
    
    public var float: Float {
        return Float(rawValue)
    }
    
    #if !os(Linux)
    public var cgFloat: CGFloat {
        return CGFloat(rawValue)
    }
    #endif
    
    public static var equalityPrecision: UInt = 15 {
        didSet {
            let precision = Double(equalityPrecision)
            marginOfError = Double(pow(10.0, -precision))
        }
    }
    
    private static var marginOfError: Double = Double(pow(10.0, Double(equalityPrecision)))
    
    // MARK: Initializers
    
    public required init(rawValue: Double) {
        self.rawValue = rawValue
    }
    
    public convenience init(float: Float) {
        self.init(rawValue: Double(float))
    }
    
    #if !os(Linux)
    public convenience init(cgFloat: CGFloat) {
        self.init(rawValue: Double(cgFloat))
    }
    #endif
    
    // MARK: Normalization
    
    func normalize(by value: Double) {
        rawValue = rawValue.truncatingRemainder(dividingBy: value)
        if rawValue < 0.0 {
           rawValue += value
        }
    }
    
    func normalized<T: Angle>(by value: Double) -> T {
        return T(rawValue: rawValue.truncatingRemainder(dividingBy: value))
    }
    
    // MARK: Operations
    
    static func add<T: Angle>(lhs: T, rhs: T) -> T {
        return T(rawValue: lhs.rawValue + rhs.rawValue)
    }
    
    static func addEqual<T: Angle>(lhs: inout T, rhs: T) {
        lhs.rawValue += rhs.rawValue
    }
    
    static func minus<T: Angle>(lhs: T, rhs: T) -> T {
        return T(rawValue: lhs.rawValue - rhs.rawValue)
    }
    
    static func minusEqual<T: Angle>(lhs: inout T, rhs: T) {
        lhs.rawValue -= rhs.rawValue
    }
    
    static func multiply<T: Angle>(angle: T, with value: Double) -> T {
        return T(rawValue: angle.rawValue * value)
    }
    
    static func multiply<T: Angle>(angle: T, with value: Float) -> T {
        return T(rawValue: angle.rawValue * Double(value))
    }
    
    #if !os(Linux)
    static func multiply<T: Angle>(angle: T, with value: CGFloat) -> T {
        return T(rawValue: angle.rawValue * Double(Double(value)))
    }
    #endif
    
    static func multiply<T: Angle>(value: Double, with angle: T) -> T {
        return T(rawValue: value * angle.rawValue)
    }
    
    static func multiply<T: Angle>(value: Float, with angle: T) -> T {
        return T(rawValue: Double(value) * angle.rawValue)
    }
    
    #if !os(Linux)
    static func multiply<T: Angle>(value: CGFloat, with angle: T) -> T {
        return T(rawValue: Double(value) * angle.rawValue)
    }
    #endif
    
    static func multiplyEqual<T: Angle>(angle: inout T, with value: Double) {
        angle.rawValue = angle.rawValue * value
    }
    
    static func multiplyEqual<T: Angle>(angle: inout T, with value: Float) {
        angle.rawValue = angle.rawValue * Double(value)
    }
    
    #if !os(Linux)
    static func multiplyEqual<T: Angle>(angle: inout T, with value: CGFloat) {
        angle.rawValue = angle.rawValue * Double(value)
    }
    #endif
    
    static func divide<T: Angle>(angle: T, with value: Double) -> T {
        return T(rawValue: angle.rawValue / value)
    }
    
    static func divide<T: Angle>(angle: T, with value: Float) -> T {
        return T(rawValue: angle.rawValue / Double(value))
    }
    
    #if !os(Linux)
    static func divide<T: Angle>(angle: T, with value: CGFloat) -> T {
        return T(rawValue: angle.rawValue / Double(value))
    }
    #endif
    
    static func divide<T: Angle>(value: Double, with angle: T) -> T {
        return T(rawValue: value / angle.rawValue)
    }
    
    static func divide<T: Angle>(value: Float, with angle: T) -> T {
        return T(rawValue: Double(value) / angle.rawValue)
    }
    
    #if !os(Linux)
    static func divide<T: Angle>(value: CGFloat, with angle: T) -> T {
        return T(rawValue: Double(value) / angle.rawValue)
    }
    #endif
    
    static func divideEqual<T: Angle>(lhs: inout T, rhs: Double) {
        lhs.rawValue = lhs.rawValue / rhs
    }
    
    static func divideEqual<T: Angle>(lhs: inout T, rhs: Float) {
        lhs.rawValue = lhs.rawValue / Double(rhs)
    }
    
    #if !os(Linux)
    static func divideEqual<T: Angle>(lhs: inout T, rhs: CGFloat) {
        lhs.rawValue = lhs.rawValue / Double(rhs)
    }
    #endif
    
    // MARK: Equality and Comparison
    
    static func equal<T: Angle>(lhs: T, rhs: T) -> Bool {
        let difference = abs(lhs.rawValue - rhs.rawValue)
        return difference < marginOfError
    }
    
    static func lessThan<T: Angle>(lhs: T, rhs: T) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

