//
//  TrigonometryFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation
#if os(Linux)
    import Glibc
#endif

public struct Trigonometry {
    public static func acos(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.acos(value)
        #else
            let angle = Darwin.acos(value)
        #endif
        
        return Radian<Float>(rawValue: angle)
    }
    
    public static func acos(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.acos(value)
        #else
            let angle = Darwin.acos(value)
        #endif
        
        return Radian<Double>(rawValue: angle)
    }
    
    public static func acosh(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.acosh(value)
        #else
            let angle = Darwin.acosh(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    public static func acosh(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.acosh(value)
        #else
            let angle = Darwin.acosh(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    public static func asin(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.asin(value)
        #else
            let angle = Darwin.asin(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    public static func asin(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.asin(value)
        #else
            let angle = Darwin.asin(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    public static func asinh(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.asinh(value)
        #else
            let angle = Darwin.asinh(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    public static func asinh(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.asinh(value)
        #else
            let angle = Darwin.asinh(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    public static func atan(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.atan(value)
        #else
            let angle = Darwin.atan(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    public static func atan(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.atan(value)
        #else
            let angle = Darwin.atan(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    public static func atan2(x: Float, y: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.atan2(x, y)
        #else
            let angle = Darwin.atan2(x, y)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    public static func atan2(x: Double, y: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.atan2(x, y)
        #else
            let angle = Darwin.atan2(x, y)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    public static func atanh(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.atanh(value)
        #else
            let angle = Darwin.atanhf(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    public static func atanh(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.atanh(value)
        #else
            let angle = Darwin.atanh(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    public static func cos(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.cos(angle.rawValue)
        #else
            return Darwin.cos(angle.rawValue)
        #endif
    }
    
    public static func cos(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.cos(angle.rawValue)
        #else
            return Darwin.cos(angle.rawValue)
        #endif
    }
    
    public static func cosh(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.cosh(angle.rawValue)
        #else
            return Darwin.cosh(angle.rawValue)
        #endif
    }
    
    public static func cosh(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.cosh(angle.rawValue)
        #else
            return Darwin.cosh(angle.rawValue)
        #endif
    }
    
    public static func sin(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.sin(angle.rawValue)
        #else
            return Darwin.sin(angle.rawValue)
        #endif
    }
    
    public static func sin(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.sin(angle.rawValue)
        #else
            return Darwin.sin(angle.rawValue)
        #endif
    }
    
    public static func sinh(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.sinh(angle.rawValue)
        #else
            return Darwin.sinh(angle.rawValue)
        #endif
    }
    
    public static func sinh(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.sinh(angle.rawValue)
        #else
            return Darwin.sinh(angle.rawValue)
        #endif
    }
    
    public static func tan(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.tan(angle.rawValue)
        #else
            return Darwin.tan(angle.rawValue)
        #endif
    }
    
    public static func tan(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.tan(angle.rawValue)
        #else
            return Darwin.tan(angle.rawValue)
        #endif
    }
    
    public static func tanh(_ angle: Radian<Float>) -> Float {
        #if os(Linux)
            return Glibc.tanh(angle.rawValue)
        #else
            return Darwin.tanh(angle.rawValue)
        #endif
    }
    
    public static func tanh(_ angle: Radian<Double>) -> Double {
        #if os(Linux)
            return Glibc.tanh(angle.rawValue)
        #else
            return Darwin.tanh(angle.rawValue)
        #endif
    }
    
    // MARK: Additional functions
    
    public static func cosec(_ angle: Radian<Float>) -> Float {
        return 1.0 / sin(angle)
    }
    
    public static func cosec(_ angle: Radian<Double>) -> Double {
        return 1.0 / sin(angle)
    }
    
    public static func sec(_ angle: Radian<Float>) -> Float {
        return 1.0 / cos(angle)
    }
    
    public static func sec(_ angle: Radian<Double>) -> Double {
        return 1.0 / cos(angle)
    }
}

