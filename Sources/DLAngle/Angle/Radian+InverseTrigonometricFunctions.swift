//
//  Radian+InverseTrigonometricFunctions.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
#if !os(Linux)
    import CoreGraphics
#endif

public extension Radian {
    /// Create a Radian angle by computing asin.
    ///
    /// - Parameter asin: The asin value.
    /// - Throws: Throws an error if asin value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asin+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseSine.html)
    public convenience init(asin: Double) throws {
        let rawValue: Double = try Trigonometry.asin(asin)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing asin.
    ///
    /// - Parameter asin: The asin value.
    /// - Throws: Throws an error if asin value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asin+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseSine.html)
    public convenience init(asin: Float) throws {
        let rawValue: Double = try Trigonometry.asin(Double(asin))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing asin.
    ///
    /// - Parameter asin: The asin value.
    /// - Throws: Throws an error if asin value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asin+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseSine.html)
    public convenience init(asin: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.asin(asin)
        self.init(cgFloat: rawValue)
    }
    #endif

    /// Create a Radian angle by computing acos.
    ///
    /// - Parameter asin: The acos value.
    /// - Throws: Throws an error if acos value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acos+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCosine.html)
    public convenience init(acos: Double) throws {
        let rawValue: Double = try Trigonometry.acos(acos)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing acos.
    ///
    /// - Parameter acos: The acos value.
    /// - Throws: Throws an error if acos value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acos+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCosine.html)
    public convenience init(acos: Float) throws {
        let rawValue: Double = try Trigonometry.acos(Double(acos))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing acos.
    ///
    /// - Parameter acos: The acos value.
    /// - Throws: Throws an error if acos value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acos+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCosine.html)
    public convenience init(acos: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acos(acos)
        self.init(cgFloat: rawValue)
    }
    #endif

    /// Create a Radian angle by computing atan.
    ///
    /// - Parameter atan: The atan value.
    /// - Throws: Throws an error if atan value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atan+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseTangent.html)
    public convenience init(atan: Double) throws {
        let rawValue: Double = try Trigonometry.atan(atan)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing atan.
    ///
    /// - Parameter atan: The atan value.
    /// - Throws: Throws an error if atan value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atan+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseTangent.html)
    public convenience init(atan: Float) throws {
        let rawValue: Double = try Trigonometry.atan(Double(atan))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing atan.
    ///
    /// - Parameter atan: The atan value.
    /// - Throws: Throws an error if atan value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atan+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseTangent.html)
    public convenience init(atan: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.atan(atan)
        self.init(cgFloat: rawValue)
    }
    #endif

    // swiftlint:disable identifier_name
    /// Create a Radian angle by computing atan and taking into account the quadrant.
    ///
    /// - Parameters:
    ///   - y: y value for atan.
    ///   - x: x value for atan.
    /// - Throws: Throws an error if y and/or x are not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atan2+(x,+y))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseTangent.html)
    public convenience init(atan2Y y: Double, x: Double) throws {
        let rawValue: Double = try Trigonometry.atan2(y: y, x: x)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing atan and taking into account the quadrant.
    ///
    /// - Parameters:
    ///   - y: y value for atan.
    ///   - x: x value for atan.
    /// - Throws: Throws an error if y and/or x are not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atan2+(x,+y))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseTangent.html)
    public convenience init(atan2Y y: Float, x: Float) throws {
        let rawValue: Double = try Trigonometry.atan2(y: Double(y), x: Double(x))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)

    /// Create a Radian angle by computing atan and taking into account the quadrant.
    ///
    /// - Parameters:
    ///   - y: y value for atan.
    ///   - x: x value for atan.
    /// - Throws: Throws an error if y and/or x are not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atan2+(x,+y))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseTangent.html)
    public convenience init(atan2Y y: CGFloat, x: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.atan2(y: y, x: x)
        self.init(cgFloat: rawValue)
    }
    #endif
    // swiftlint:enable identifier_name

    /// Create a Radian angle by computing acot.
    ///
    /// - Parameter acot: The acot value.
    /// - Throws: Throws an error if acot value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acot+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCotangent.html)
    public convenience init(acot: Double) throws {
        let rawValue: Double = try Trigonometry.acot(acot)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing acot.
    ///
    /// - Parameter acot: The acot value.
    /// - Throws: Throws an error if acot value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acot+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCotangent.html)
    public convenience init(acot: Float) throws {
        let rawValue: Double = try Trigonometry.acot(Double(acot))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing acot.
    ///
    /// - Parameter acot: The acot value.
    /// - Throws: Throws an error if acot value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acot+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCotangent.html)
    public convenience init(acot: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acot(acot)
        self.init(cgFloat: rawValue)
    }
    #endif

    /// Create a Radian angle by computing asec.
    ///
    /// - Parameter asec: The asec value.
    /// - Throws: Throws an error if asec value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asec+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseSecant.html)
    public convenience init(asec: Double) throws {
        let rawValue: Double = try Trigonometry.asec(asec)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing asec.
    ///
    /// - Parameter asec: The asec value.
    /// - Throws: Throws an error if asec value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asec+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseSecant.html)
    public convenience init(asec: Float) throws {
        let rawValue: Double = try Trigonometry.asec(Double(asec))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing asec.
    ///
    /// - Parameter asec: The asec value.
    /// - Throws: Throws an error if asec value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asec+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseSecant.html)
    public convenience init(asec: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.asec(asec)
        self.init(cgFloat: rawValue)
    }
    #endif

    /// Create a Radian angle by computing acsc.
    ///
    /// - Parameter acsc: The acsc value.
    /// - Throws: Throws an error if acsc value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acsc+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCosecant.html)
    public convenience init(acsc: Double) throws {
        let rawValue: Double = try Trigonometry.acsc(acsc)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing acsc.
    ///
    /// - Parameter acsc: The acsc value.
    /// - Throws: Throws an error if acsc value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acsc+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCosecant.html)
    public convenience init(acsc: Float) throws {
        let rawValue: Double = try Trigonometry.acsc(Double(acsc))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing acsc.
    ///
    /// - Parameter acsc: The acsc value.
    /// - Throws: Throws an error if acsc value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acsc+(x))
    ///
    ///    [Wolfram MathWorld](http://mathworld.wolfram.com/InverseCosecant.html)
    public convenience init(acsc: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acsc(acsc)
        self.init(cgFloat: rawValue)
    }
    #endif
}
