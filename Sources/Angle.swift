//
//  Angle.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation

public class Angle<Representation : FloatingPoint> {
    public typealias RawValue = Representation
    public var rawValue: Representation
    
    required public init(rawValue: Representation) {
        self.rawValue = rawValue
    }
    
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
    
    static func multiply<T: Angle>(angle: T, with value: Representation) -> T {
        return T(rawValue: angle.rawValue * value)
    }
    
    static func multiply<T: Angle>(value: Representation, with angle: T) -> T {
        return T(rawValue: value * angle.rawValue)
    }
    
    static func multiplyEqual<T: Angle>(angle: inout T, with value: Representation) {
        angle.rawValue = angle.rawValue * value
    }
    
    static func divide<T: Angle>(angle: T, with value: Representation) -> T {
        return T(rawValue: angle.rawValue / value)
    }
    
    static func divide<T: Angle>(value: Representation, with angle: T) -> T {
        return T(rawValue: value / angle.rawValue)
    }
    
    static func divideEqual<T: Angle>(lhs: inout T, rhs: Representation) {
        lhs.rawValue = lhs.rawValue / rhs
    }
    
    static func equal<T: Angle>(lhs: T, rhs: T) -> Bool {
        let marginOfError = Float80(pow(10.0, -15.0))
        let difference = abs(lhs.rawValue - rhs.rawValue)
        switch difference {
        case let floatValue as Float:
            return Float80(floatValue) < marginOfError
        case let double as Double:
            return Float80(double) < marginOfError
        case let extendedPrecision as Float80:
            return extendedPrecision < marginOfError
        default:
            return false
        }
    }
    
    static func lessThan<T: Angle>(lhs: T, rhs: T) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

