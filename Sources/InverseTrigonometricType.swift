import Foundation
#if os(Linux)
    import Glibc
#endif

public protocol InverseTrigonometricType {
    static func acos(_ value: Float) -> Radian<Float>
    static func acos(_ value: Double) -> Radian<Double>
    
    static func acosh(_ value: Float) -> Radian<Float>
    static func acosh(_ value: Double) -> Radian<Double>
    
    static func asin(_ value: Float) -> Radian<Float>
    static func asin(_ value: Double) -> Radian<Double>
    
    static func asinh(_ value: Float) -> Radian<Float>
    static func asinh(_ value: Double) -> Radian<Double>
    
    static func atan(_ value: Float) -> Radian<Float>
    static func atan(_ value: Double) -> Radian<Double>
    
    static func atan2(x: Float, y: Float) -> Radian<Float>
    static func atan2(x: Double, y: Double) -> Radian<Double>
    
    static func atanh(_ value: Float) -> Radian<Float>
    static func atanh(_ value: Double) -> Radian<Double>
}

public extension InverseTrigonometricType {
    static func acos(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.acos(value)
        #else
            let angle = Darwin.acos(value)
        #endif
        
        return Radian<Float>(rawValue: angle)
    }
    
    static func acos(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.acos(value)
        #else
            let angle = Darwin.acos(value)
        #endif
        
        return Radian<Double>(rawValue: angle)
    }
    
    static func acosh(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.acosh(value)
        #else
            let angle = Darwin.acosh(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    static func acosh(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.acosh(value)
        #else
            let angle = Darwin.acosh(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    static func asin(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.asin(value)
        #else
            let angle = Darwin.asin(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    static func asin(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.asin(value)
        #else
            let angle = Darwin.asin(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    static func asinh(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.asinh(value)
        #else
            let angle = Darwin.asinh(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    static func asinh(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.asinh(value)
        #else
            let angle = Darwin.asinh(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    static func atan(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.atan(value)
        #else
            let angle = Darwin.atan(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    static func atan(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.atan(value)
        #else
            let angle = Darwin.atan(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    static func atan2(x: Float, y: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.atan2(x, y)
        #else
            let angle = Darwin.atan2(x, y)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    static func atan2(x: Double, y: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.atan2(x, y)
        #else
            let angle = Darwin.atan2(x, y)
        #endif
        return Radian<Double>(rawValue: angle)
    }
    
    static func atanh(_ value: Float) -> Radian<Float> {
        #if os(Linux)
            let angle = Glibc.atan2(value)
        #else
            let angle = Darwin.atanhf(value)
        #endif
        return Radian<Float>(rawValue: angle)
    }
    
    static func atanh(_ value: Double) -> Radian<Double> {
        #if os(Linux)
            let angle = Glibc.atan2(value)
        #else
            let angle = Darwin.atanh(value)
        #endif
        return Radian<Double>(rawValue: angle)
    }
}

