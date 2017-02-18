//
//  Degree.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation

public class Degree<Representation: FloatingPoint>: Angle<Representation>, Comparable {
    public convenience init(radians: Representation) {
        let degrees: RawValue = 180 * radians / Representation.pi
        self.init(rawValue: degrees)
    }
    
    public convenience init(radian: Radian<Representation>) {
        self.init(radians: radian.rawValue)
    }
    
    public static func +(lhs: Degree<Representation>, rhs: Degree<Representation>) -> Degree<Representation> {
        return add(lhs: lhs, rhs: rhs)
    }
    
    public static func +=(lhs: inout Degree<Representation>, rhs: Degree<Representation>) {
        addEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func -(lhs: Degree<Representation>, rhs: Degree<Representation>) -> Degree<Representation> {
        return minus(lhs: lhs, rhs: rhs)
    }
    
    public static func -=(lhs: inout Degree<Representation>, rhs: Degree<Representation>) {
        minusEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func *(lhs: Degree<Representation>, rhs: Representation) -> Degree<Representation> {
        return multiply(angle: lhs, with: rhs)
    }
    
    public static func *(lhs: Representation, rhs: Degree<Representation>) -> Degree<Representation> {
        return multiply(value: lhs, with: rhs)
    }
    
    public static func *=(lhs: inout Degree<Representation>, rhs: Representation) {
        multiplyEqual(angle: &lhs, with: rhs)
    }
    
    public static func /(lhs: Degree<Representation>, rhs: Representation) -> Degree<Representation> {
        return divide(angle: lhs, with: rhs)
    }
    
    public static func /=(lhs: inout Degree<Representation>, rhs: Representation) {
        divideEqual(lhs: &lhs, rhs: rhs)
    }
    
    public static func ==(lhs: Degree<Representation>, rhs: Degree<Representation>) -> Bool {
        return equal(lhs: lhs, rhs: rhs)
    }
    
    public static func <(lhs: Degree<Representation>, rhs: Degree<Representation>) -> Bool {
        return lessThan(lhs: lhs, rhs: rhs)
    }
}

