//
//  Degree.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation

public class Radian<Representation: FloatingPoint>: Angle<Representation> {
    public convenience init(degrees: Representation) {
        let radians: RawValue = degrees / 180 * Representation.pi
        self.init(rawValue: radians)
    }
    
    public convenience init(degree: Degree<Representation>) {
        self.init(degrees: degree.rawValue)
    }
    
    public static func +(lhs: Radian<Representation>, rhs: Radian<Representation>) -> Radian<Representation> {
        return Radian<Representation>(rawValue: lhs.rawValue + rhs.rawValue)
    }
    
    public static func +=(lhs: inout Radian<Representation>, rhs: Radian<Representation>) {
        lhs.rawValue += rhs.rawValue
    }
    
    public static func -(lhs: Radian<Representation>, rhs: Representation) -> Radian<Representation> {
        return Radian<Representation>(rawValue: lhs.rawValue - rhs)
    }
    
    public static func -=(lhs: inout Radian<Representation>, rhs: Radian<Representation>) {
        lhs.rawValue -= rhs.rawValue
    }
    
    public static func *(lhs: Radian<Representation>, rhs: Representation) -> Radian<Representation> {
        return Radian<Representation>(rawValue: lhs.rawValue * rhs)
    }
    
    public static func *(lhs: Representation, rhs: Radian<Representation>) -> Radian<Representation> {
        return Radian<Representation>(rawValue: lhs * rhs.rawValue)
    }
    
    public static func *=(lhs: inout Radian<Representation>, rhs: Representation) {
        lhs.rawValue *= rhs
    }
    
    public static func /(lhs: Radian<Representation>, rhs: Representation) -> Radian<Representation> {
        return Radian<Representation>(rawValue: lhs.rawValue / rhs)
    }
    
    public static func /(lhs: Representation, rhs: Radian<Representation>) -> Radian<Representation> {
        return Radian<Representation>(rawValue: lhs / rhs.rawValue)
    }
    
    public static func /=(lhs: inout Radian<Representation>, rhs: Representation) {
        lhs.rawValue /= rhs
    }
}

