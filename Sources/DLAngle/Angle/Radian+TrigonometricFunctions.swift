//
//  Radian+TrigonometricFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 19/02/2017.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

public extension Radian {
    /// Compute the sine.
    ///
    /// - Returns: The computed sine.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sin+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Sine.html)
    public func sin() throws -> Double {
        return try Trigonometry.sin(self)
    }

    /// Compute the sine.
    ///
    /// - Returns: The computed sine.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sin+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Sine.html)
    public func sin() throws -> Float {
        return try Trigonometry.sin(self)
    }

    #if !os(Linux)
    /// Compute the sine.
    ///
    /// - Returns: The computed sine.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sin+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Sine.html)
    public func sin() throws -> CGFloat {
        return try  Trigonometry.sin(self)
    }
    #endif

    /// Compute the cosine.
    ///
    /// - Returns: The computed cosine.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cos+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cosine.html)
    public func cos() throws -> Double {
        return try Trigonometry.cos(self)
    }

    /// Compute the cosine.
    ///
    /// - Returns: The computed cosine.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cos+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cosine.html)
    public func cos() throws -> Float {
        return try Trigonometry.cos(self)
    }

    #if !os(Linux)
    /// Compute the cosine.
    ///
    /// - Returns: The computed cosine.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cos+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cosine.html)
    public func cos() throws -> CGFloat {
        return try Trigonometry.cos(self)
    }
    #endif

    /// Compute the tangent.
    ///
    /// - Returns: The computed tangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=tan+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Tangent.html)
    public func tan() throws -> Double {
        return try Trigonometry.tan(self)
    }

    /// Compute the tangent.
    ///
    /// - Returns: The computed tangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=tan+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Tangent.html)
    public func tan() throws -> Float {
        return try Trigonometry.tan(self)
    }

    #if !os(Linux)
    /// Compute the tangent.
    ///
    /// - Returns: The computed tangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=tan+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Tangent.html)
    public func tan() throws -> CGFloat {
        return try Trigonometry.tan(self)
    }
    #endif

    /// Compute the cotangent.
    ///
    /// - Returns: The computed cotangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cot+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cotangent.html)
    public func cot() throws -> Double {
        return try Trigonometry.cot(self)
    }

    /// Compute the cotangent.
    ///
    /// - Returns: The computed cotangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cot+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cotangent.html)
    public func cot() throws -> Float {
        return try Trigonometry.cot(self)
    }

    #if !os(Linux)
    /// Compute the cotangent.
    ///
    /// - Returns: The computed cotangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cot+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cotangent.html)
    public func cot() throws -> CGFloat {
        return try Trigonometry.cot(self)
    }
    #endif

    /// Compute the secant.
    ///
    /// - Returns: The computed secant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sec+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Secant.html)
    public func sec() throws -> Double {
        return try Trigonometry.sec(self)
    }

    /// Compute the secant.
    ///
    /// - Returns: The computed secant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sec+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Secant.html)
    public func sec() throws -> Float {
        return try Trigonometry.sec(self)
    }

    #if !os(Linux)
    /// Compute the secant.
    ///
    /// - Returns: The computed secant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sec+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Secant.html)
    public func sec() throws -> CGFloat {
        return try Trigonometry.sec(self)
    }
    #endif

    /// Compute the cosecant.
    ///
    /// - Returns: The computed cosecant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=csc+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cosecant.html)
    public func csc() throws -> Double {
        return try Trigonometry.csc(self)
    }

    /// Compute the cosecant.
    ///
    /// - Returns: The computed cosecant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=csc+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cosecant.html)
    public func csc() throws -> Float {
        return try Trigonometry.csc(self)
    }

    #if !os(Linux)
    /// Compute the cosecant.
    ///
    /// - Returns: The computed cosecant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=csc+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/Cosecant.html)
    public func csc() throws -> CGFloat {
        return try Trigonometry.csc(self)
    }
    #endif
}
