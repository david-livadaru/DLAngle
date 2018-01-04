//
//  File.swift
//  DLAngle
//
//  Created by David Livadaru on 1/4/18.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

public extension Radian {
    /// Compute the hyperbolic sine.
    ///
    /// - Returns: The computed hyperbolic sine.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sinh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicSine.html)
    public func sinh() -> Double {
        return Trigonometry.sinh(self)
    }

    /// Compute the hyperbolic sine.
    ///
    /// - Returns: The computed hyperbolic sine.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sinh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicSine.html)
    public func sinh() -> Float {
        return Trigonometry.sinh(self)
    }

    #if !os(Linux)
    /// Compute the hyperbolic sine.
    ///
    /// - Returns: The computed hyperbolic sine.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sinh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicSine.html)
    public func sinh() -> CGFloat {
        return Trigonometry.sinh(self)
    }
    #endif

    /// Compute the hyperbolic cosine.
    ///
    /// - Returns: The computed hyperbolic cosine.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cosh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCosine.html)
    public func cosh() -> Double {
        return Trigonometry.cosh(self)
    }

    /// Compute the hyperbolic cosine.
    ///
    /// - Returns: The computed hyperbolic cosine.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cosh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCosine.html)
    public func cosh() -> Float {
        return Trigonometry.cosh(self)
    }

    #if !os(Linux)
    /// Compute the hyperbolic cosine.
    ///
    /// - Returns: The computed hyperbolic cosine.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=cosh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCosine.html)
    public func cosh() -> CGFloat {
        return Trigonometry.cosh(self)
    }
    #endif

    /// Compute the hyperbolic tangent.
    ///
    /// - Returns: The computed hyperbolic tangent.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=tanh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicTangent.html)
    public func tanh() -> Double {
        return Trigonometry.tanh(self)
    }

    /// Compute the hyperbolic tangent.
    ///
    /// - Returns: The computed hyperbolic tangent.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=tanh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicTangent.html)
    public func tanh() -> Float {
        return Trigonometry.tanh(self)
    }

    #if !os(Linux)
    /// Compute the hyperbolic tangent.
    ///
    /// - Returns: The computed hyperbolic tangent.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=tanh+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicTangent.html)
    public func tanh() -> CGFloat {
        return Trigonometry.tanh(self)
    }
    #endif

    /// Compute the hyperbolic cotangent.
    ///
    /// - Returns: The computed hyperbolic cotangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=coth+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCotangent.html)
    public func coth() throws -> Double {
        return try Trigonometry.coth(self)
    }

    /// Compute the hyperbolic cotangent.
    ///
    /// - Returns: The computed hyperbolic cotangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=coth+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCotangent.html)
    public func coth() throws -> Float {
        return try Trigonometry.coth(self)
    }

    #if !os(Linux)
    /// Compute the hyperbolic cotangent.
    ///
    /// - Returns: The computed hyperbolic cotangent.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=coth+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCotangent.html)
    public func coth() throws -> CGFloat {
        return try Trigonometry.coth(self)
    }
    #endif

    /// Compute the hyperbolic secant.
    ///
    /// - Returns: The computed hyperbolic secant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sech+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicSecant.html)
    public func sech() -> Double {
        return Trigonometry.sech(self)
    }

    /// Compute the hyperbolic secant.
    ///
    /// - Returns: The computed hyperbolic secant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sech+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicSecant.html)
    public func sech() -> Float {
        return Trigonometry.sech(self)
    }

    #if !os(Linux)
    /// Compute the hyperbolic secant.
    ///
    /// - Returns: The computed hyperbolic secant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=sech+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicSecant.html)
    public func sech() -> CGFloat {
        return Trigonometry.sech(self)
    }
    #endif

    /// Compute the hyperbolic cosecant.
    ///
    /// - Returns: The computed hyperbolic cosecant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=csch+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCosecant.html)
    public func csch() throws -> Double {
        return try Trigonometry.csch(self)
    }

    /// Compute the hyperbolic cosecant.
    ///
    /// - Returns: The computed hyperbolic cosecant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=csch+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCosecant.html)
    public func csch() throws -> Float {
        return try Trigonometry.csch(self)
    }

    #if !os(Linux)
    /// Compute the hyperbolic cosecant.
    ///
    /// - Returns: The computed hyperbolic cosecant.
    /// - Throws: Throws an error if the computation is not possible.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=csch+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/HyperbolicCosecant.html)
    public func csch() throws -> CGFloat {
        return try Trigonometry.csch(self)
    }
    #endif
}
