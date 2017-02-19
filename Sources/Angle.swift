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
    public private (set) var rawValue: Float80
    
    public var float: Float {
        return Float(rawValue)
    }
    
    public var double: Double {
        return Double(rawValue)
    }
    
    #if !os(Linux)
    public var cgFloat: CGFloat {
        return CGFloat(rawValue)
    }
    #endif
    
    public static var equalityPrecision: UInt = 15 {
        didSet {
            let precision = Double(equalityPrecision)
            marginOfError = Float80(pow(10.0, -precision))
        }
    }
    
    private static var marginOfError: Float80 = Float80(pow(10.0, -15))
    
    // MARK: Initializers
    
    public required init(rawValue: Float80) {
        self.rawValue = rawValue
    }
    
    public convenience init(float: Float) {
        self.init(rawValue: Float80(float))
    }
    
    public convenience init(double: Double) {
        self.init(rawValue: Float80(double))
    }
    
    #if !os(Linux)
    public convenience init(cgFloat: CGFloat) {
        self.init(double: Double(cgFloat))
    }
    #endif
    
    // MARK: Normalization
    
    func normalize(by value: Float80) {
        rawValue = rawValue.truncatingRemainder(dividingBy: value)
    }
    
    func normalized<T: Angle>(by value: Float80) -> T {
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
    
    static func multiply<T: Angle>(angle: T, with value: Float80) -> T {
        return T(rawValue: angle.rawValue * value)
    }
    
    static func multiply<T: Angle>(angle: T, with value: Float) -> T {
        return T(rawValue: angle.rawValue * Float80(value))
    }
    
    static func multiply<T: Angle>(angle: T, with value: Double) -> T {
        return T(rawValue: angle.rawValue * Float80(value))
    }
    
    #if !os(Linux)
    static func multiply<T: Angle>(angle: T, with value: CGFloat) -> T {
        return T(rawValue: angle.rawValue * Float80(Double(value)))
    }
    #endif
    
    static func multiply<T: Angle>(value: Float80, with angle: T) -> T {
        return T(rawValue: value * angle.rawValue)
    }
    
    static func multiply<T: Angle>(value: Float, with angle: T) -> T {
        return T(rawValue: Float80(value) * angle.rawValue)
    }
    
    static func multiply<T: Angle>(value: Double, with angle: T) -> T {
        return T(rawValue: Float80(value) * angle.rawValue)
    }
    
    #if !os(Linux)
    static func multiply<T: Angle>(value: CGFloat, with angle: T) -> T {
        return T(rawValue: Float80(Double(value)) * angle.rawValue)
    }
    #endif
    
    static func multiplyEqual<T: Angle>(angle: inout T, with value: Float80) {
        angle.rawValue = angle.rawValue * value
    }
    
    static func multiplyEqual<T: Angle>(angle: inout T, with value: Float) {
        angle.rawValue = angle.rawValue * Float80(value)
    }
    
    static func multiplyEqual<T: Angle>(angle: inout T, with value: Double) {
        angle.rawValue = angle.rawValue * Float80(value)
    }
    
    #if !os(Linux)
    static func multiplyEqual<T: Angle>(angle: inout T, with value: CGFloat) {
        angle.rawValue = angle.rawValue * Float80(Double(value))
    }
    #endif
    
    static func divide<T: Angle>(angle: T, with value: Float80) -> T {
        return T(rawValue: angle.rawValue / value)
    }
    
    static func divide<T: Angle>(angle: T, with value: Float) -> T {
        return T(rawValue: angle.rawValue / Float80(value))
    }
    
    static func divide<T: Angle>(angle: T, with value: Double) -> T {
        return T(rawValue: angle.rawValue / Float80(value))
    }
    
    #if !os(Linux)
    static func divide<T: Angle>(angle: T, with value: CGFloat) -> T {
        return T(rawValue: angle.rawValue / Float80(Double(value)))
    }
    #endif
    
    static func divide<T: Angle>(value: Float80, with angle: T) -> T {
        return T(rawValue: value / angle.rawValue)
    }
    
    static func divide<T: Angle>(value: Float, with angle: T) -> T {
        return T(rawValue: Float80(value) / angle.rawValue)
    }
    
    static func divide<T: Angle>(value: Double, with angle: T) -> T {
        return T(rawValue: Float80(value) / angle.rawValue)
    }
    
    #if !os(Linux)
    static func divide<T: Angle>(value: CGFloat, with angle: T) -> T {
        return T(rawValue: Float80(Double(value)) / angle.rawValue)
    }
    #endif
    
    static func divideEqual<T: Angle>(lhs: inout T, rhs: Float80) {
        lhs.rawValue = lhs.rawValue / rhs
    }
    
    static func divideEqual<T: Angle>(lhs: inout T, rhs: Float) {
        lhs.rawValue = lhs.rawValue / Float80(rhs)
    }
    
    static func divideEqual<T: Angle>(lhs: inout T, rhs: Double) {
        lhs.rawValue = lhs.rawValue / Float80(rhs)
    }
    
    #if !os(Linux)
    static func divideEqual<T: Angle>(lhs: inout T, rhs: CGFloat) {
        lhs.rawValue = lhs.rawValue / Float80(Double(rhs))
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

