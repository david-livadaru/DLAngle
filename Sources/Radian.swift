//
//  Degree.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation

public class  Radian<Representation: FloatingPoint>: Angle<Representation>, Comparable {
    public convenience init(degrees: Representation) {
        let radians: RawValue = degrees / 180 * Representation.pi
        self.init(rawValue: radians)
    }
    
    public convenience init(degree: Degree<Representation>) {
        self.init(degrees: degree.rawValue)
    }
    
    public static func +(lhs: Radian<Representation>, rhs: Radian<Representation>) -> Radian<Representation> {
        return add(lhs: lhs, rhs: rhs)
    }
    
    public static func +=(lhs: inout Radian<Representation>, rhs: Radian<Representation>) {
        addEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func -(lhs: Radian<Representation>, rhs: Radian<Representation>) -> Radian<Representation> {
        return minus(lhs: lhs, rhs: rhs)
    }
    
    public static func -=(lhs: inout Radian<Representation>, rhs: Radian<Representation>) {
        minusEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func *(lhs: Radian<Representation>, rhs: Representation) -> Radian<Representation> {
        return multiply(angle: lhs, with: rhs)
    }
    
    public static func *(lhs: Representation, rhs: Radian<Representation>) -> Radian<Representation> {
        return multiply(value: lhs, with: rhs)
    }
    
    public static func *=(lhs: inout Radian<Representation>, rhs: Representation) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    
    public static func /(lhs: Radian<Representation>, rhs: Representation) -> Radian<Representation> {
        return divide(angle: lhs, with: rhs)
    }
    
    public static func /(lhs: Representation, rhs: Radian<Representation>) -> Radian<Representation> {
        return divide(value: lhs, with: rhs)
    }
    
    public static func /=(lhs: inout Radian<Representation>, rhs: Representation) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func ==(lhs: Radian<Representation>, rhs: Radian<Representation>) -> Bool {
        return equal(lhs: lhs, rhs: rhs)
    }
    
    public static func <(lhs: Radian<Representation>, rhs: Radian<Representation>) -> Bool {
        return lessThan(lhs: lhs, rhs: rhs)
    }
}

