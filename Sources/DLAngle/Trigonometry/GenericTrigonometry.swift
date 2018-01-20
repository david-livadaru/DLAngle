//
//  GenericTrigonometry.swift
//  DLAngle
//
//  Created by David Livadaru on 19/02/2017.
//

import Foundation

/// An OS independent interface for trigonometric functions.
struct GenericTrigonometry {
    static func acos(_ value: Float) -> Float {
        #if os(Linux)
            return Glibc.acos(value)
        #else
            return Darwin.acos(value)
        #endif
    }

    static func acos(_ value: Double) -> Double {
        #if os(Linux)
            return Glibc.acos(value)
        #else
            return Darwin.acos(value)
        #endif
    }

    static func acosh(_ value: Float) -> Float {
        #if os(Linux)
            return Glibc.acosh(value)
        #else
            return Darwin.acosh(value)
        #endif
    }

    static func acosh(_ value: Double) -> Double {
        #if os(Linux)
            return Glibc.acosh(value)
        #else
            return Darwin.acosh(value)
        #endif
    }

    static func asin(_ value: Float) -> Float {
        #if os(Linux)
            return Glibc.asin(value)
        #else
            return Darwin.asin(value)
        #endif
    }

    static func asin(_ value: Double) -> Double {
        #if os(Linux)
            return Glibc.asin(value)
        #else
            return Darwin.asin(value)
        #endif
    }

    static func asinh(_ value: Float) -> Float {
        #if os(Linux)
            return Glibc.asinh(value)
        #else
            return Darwin.asinh(value)
        #endif
    }

    static func asinh(_ value: Double) -> Double {
        #if os(Linux)
            return Glibc.asinh(value)
        #else
            return Darwin.asinh(value)
        #endif
    }

    static func atan(_ value: Float) -> Float {
        #if os(Linux)
            return Glibc.atan(value)
        #else
            return Darwin.atan(value)
        #endif
    }

    static func atan(_ value: Double) -> Double {
        #if os(Linux)
            return Glibc.atan(value)
        #else
            return Darwin.atan(value)
        #endif
    }

    // swiftlint:disable:next identifier_name
    static func atan2(y: Float, x: Float) -> Float {
        #if os(Linux)
            return Glibc.atan2(y, x)
        #else
            return Darwin.atan2(y, x)
        #endif
    }

    // swiftlint:disable:next identifier_name
    static func atan2(y: Double, x: Double) -> Double {
        #if os(Linux)
            return Glibc.atan2(y, x)
        #else
            return Darwin.atan2(y, x)
        #endif
    }

    static func atanh(_ value: Float) -> Float {
        #if os(Linux)
            return Glibc.atanh(value)
        #else
            return Darwin.atanhf(value)
        #endif
    }

    static func atanh(_ value: Double) -> Double {
        #if os(Linux)
            return Glibc.atanh(value)
        #else
            return Darwin.atanh(value)
        #endif
    }

    static func cos(_ angle: Float) -> Float {
        #if os(Linux)
            return Glibc.cos(angle)
        #else
            return Darwin.cos(angle)
        #endif
    }

    static func cos(_ angle: Double) -> Double {
        #if os(Linux)
            return Glibc.cos(angle)
        #else
            return Darwin.cos(angle)
        #endif
    }

    static func cosh(_ angle: Float) -> Float {
        #if os(Linux)
            return Glibc.cosh(angle)
        #else
            return Darwin.cosh(angle)
        #endif
    }

    static func cosh(_ angle: Double) -> Double {
        #if os(Linux)
            return Glibc.cosh(angle)
        #else
            return Darwin.cosh(angle)
        #endif
    }

    static func sin(_ angle: Float) -> Float {
        #if os(Linux)
            return Glibc.sin(angle)
        #else
            return Darwin.sin(angle)
        #endif
    }

    static func sin(_ angle: Double) -> Double {
        #if os(Linux)
            return Glibc.sin(angle)
        #else
            return Darwin.sin(angle)
        #endif
    }

    static func sinh(_ angle: Float) -> Float {
        #if os(Linux)
            return Glibc.sinh(angle)
        #else
            return Darwin.sinh(angle)
        #endif
    }

    static func sinh(_ angle: Double) -> Double {
        #if os(Linux)
            return Glibc.sinh(angle)
        #else
            return Darwin.sinh(angle)
        #endif
    }

    static func tan(_ angle: Float) -> Float {
        #if os(Linux)
            return Glibc.tan(angle)
        #else
            return Darwin.tan(angle)
        #endif
    }

    static func tan(_ angle: Double) -> Double {
        #if os(Linux)
            return Glibc.tan(angle)
        #else
            return Darwin.tan(angle)
        #endif
    }

    static func tanh(_ angle: Float) -> Float {
        #if os(Linux)
            return Glibc.tanh(angle)
        #else
            return Darwin.tanh(angle)
        #endif
    }

    static func tanh(_ angle: Double) -> Double {
        #if os(Linux)
            return Glibc.tanh(angle)
        #else
            return Darwin.tanh(angle)
        #endif
    }
}
