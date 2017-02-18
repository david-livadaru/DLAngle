//
//  Degree.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation
#if os(Linux)
    import Glibc
#endif

public protocol TrigonometricType {
    static func cos(_ angle: Radian<Float>) -> Float
    static func cos(_ angle: Radian<Double>) -> Double
    
    static func cosh(_ angle: Radian<Float>) -> Float
    static func cosh(_ angle: Radian<Double>) -> Double
    
    static func sin(_ angle: Radian<Float>) -> Float
    static func sin(_ angle: Radian<Double>) -> Double
    
    static func sinh(_ angle: Radian<Float>) -> Float
    static func sinh(_ angle: Radian<Double>) -> Double
    
    static func tan(_ angle: Radian<Float>) -> Float
    static func tan(_ angle: Radian<Double>) -> Double
    
    static func tanh(_ angle: Radian<Float>) -> Float
    static func tanh(_ angle: Radian<Double>) -> Double
}

public extension TrigonometricType {
    static func cos(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.cos(angle.rawValue)
        #else
            return Darwin.cos(angle.rawValue)
        #endif
    }
    
    static func cos(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.cos(angle.rawValue)
        #else
            return Darwin.cos(angle.rawValue)
        #endif
    }
    
    static func cosh(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.cosh(angle.rawValue)
        #else
            return Darwin.cosh(angle.rawValue)
        #endif
    }
    
    static func cosh(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.cosh(angle.rawValue)
        #else
            return Darwin.cosh(angle.rawValue)
        #endif
    }
    
    static func sin(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.sin(angle.rawValue)
        #else
            return Darwin.sin(angle.rawValue)
        #endif
    }
    
    static func sin(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.sin(angle.rawValue)
        #else
            return Darwin.sin(angle.rawValue)
        #endif
    }
    
    static func sinh(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.sinh(angle.rawValue)
        #else
            return Darwin.sinh(angle.rawValue)
        #endif
    }
    
    static func sinh(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.sinh(angle.rawValue)
        #else
            return Darwin.sinh(angle.rawValue)
        #endif
    }
    
    static func tan(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.tan(angle.rawValue)
        #else
            return Darwin.tan(angle.rawValue)
        #endif
    }
    
    static func tan(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.tan(angle.rawValue)
        #else
            return Darwin.tan(angle.rawValue)
        #endif
    }
    
    static func tanh(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.tanh(angle.rawValue)
        #else
            return Darwin.tanh(angle.rawValue)
        #endif
    }
    
    static func tanh(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.tanh(angle.rawValue)
        #else
            return Darwin.tanh(angle.rawValue)
        #endif
    }
}

