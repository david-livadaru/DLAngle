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
    /// Create a Radian angle by computing asinh.
    ///
    /// - Parameter asinh: The asinh value.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asinh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcSinh.html)
    public convenience init(asinh: Double) {
        self.init(rawValue: Trigonometry.asinh(asinh))
    }

    /// Create a Radian angle by computing asinh.
    ///
    /// - Parameter asinh: The asinh value.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asinh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcSinh.html)
    public convenience init(asinh: Float) {
        self.init(float: GenericTrigonometry.asinh(asinh))
    }

    #if !os(Linux)
    /// Create a Radian angle by computing asinh.
    ///
    /// - Parameter asinh: The asinh value.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asinh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcSinh.html)
    public convenience init(asinh: CGFloat) {
        self.init(cgFloat: Trigonometry.asinh(asinh))
    }
    #endif

    /// Create a Radian angle by computing acosh.
    ///
    /// - Parameter acosh: The acosh value.
    /// - Throws: Throws an error if acosh value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acosh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCosh.html)
    public convenience init(acosh: Double) throws {
        let rawValue: Double = try Trigonometry.acosh(acosh)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing acosh.
    ///
    /// - Parameter acosh: The acosh value.
    /// - Throws: Throws an error if acosh value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acosh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCosh.html)
    public convenience init(acosh: Float) throws {
        let rawValue: Double = try Trigonometry.acosh(Double(acosh))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing acosh.
    ///
    /// - Parameter acosh: The acosh value.
    /// - Throws: Throws an error if acosh value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acosh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCosh.html)
    public convenience init(acosh: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acosh(acosh)
        self.init(cgFloat: rawValue)
    }
    #endif

    /// Create a Radian angle by computing atanh.
    ///
    /// - Parameter atanh: The atanh value.
    /// - Throws: Throws an error if atanh value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atanh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcTanh.html)
    public convenience init(atanh: Double) throws {
        let rawValue: Double = try Trigonometry.atanh(atanh)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing atanh.
    ///
    /// - Parameter atanh: The atanh value.
    /// - Throws: Throws an error if atanh value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atanh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcTanh.html)
    public convenience init(atanh: Float) throws {
        let rawValue: Double = try Trigonometry.atanh(Double(atanh))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing atanh.
    ///
    /// - Parameter atanh: The atanh value.
    /// - Throws: Throws an error if atanh value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=atanh+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcTanh.html)
    public convenience init(atanh: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.atanh(atanh)
        self.init(cgFloat: rawValue)
    }
    #endif

    /// Create a Radian angle by computing acoth.
    ///
    /// - Parameter acoth: The acoth value.
    /// - Throws: Throws an error if acoth value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acoth+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCoth.html)
    public convenience init(acoth: Double) throws {
        let rawValue: Double = try Trigonometry.acoth(acoth)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing acoth.
    ///
    /// - Parameter acoth: The acoth value.
    /// - Throws: Throws an error if acoth value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acoth+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCoth.html)
    public convenience init(acoth: Float) throws {
        let rawValue: Double = try Trigonometry.acoth(Double(acoth))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing acoth.
    ///
    /// - Parameter acoth: The acoth value.
    /// - Throws: Throws an error if acoth value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acoth+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCoth.html)
    public convenience init(acoth: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acoth(acoth)
        self.init(cgFloat: rawValue)
    }
    #endif

    /// Create a Radian angle by computing asech.
    ///
    /// - Parameter asech: The asech value.
    /// - Throws: Throws an error if asech value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asech+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcSech.html)
    public convenience init(asech: Double) throws {
        let rawValue: Double = try Trigonometry.asech(asech)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing asech.
    ///
    /// - Parameter asech: The asech value.
    /// - Throws: Throws an error if asech value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asech+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcSech.html)
    public convenience init(asech: Float) throws {
        let rawValue: Double = try Trigonometry.asech(Double(asech))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing asech.
    ///
    /// - Parameter asech: The asech value.
    /// - Throws: Throws an error if asech value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=asech+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcSech.html)
    public convenience init(asech: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.asech(asech)
        self.init(cgFloat: rawValue)
    }
    #endif

    /// Create a Radian angle by computing acsch.
    ///
    /// - Parameter acsch: The acsch value.
    /// - Throws: Throws an error if asech value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acsch+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCsch.html)
    public convenience init(acsch: Double) throws {
        let rawValue: Double = try Trigonometry.acsch(acsch)
        self.init(rawValue: rawValue)
    }

    /// Create a Radian angle by computing acsch.
    ///
    /// - Parameter acsch: The acsch value.
    /// - Throws: Throws an error if asech value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acsch+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCsch.html)
    public convenience init(acsch: Float) throws {
        let rawValue: Double = try Trigonometry.acsch(Double(acsch))
        self.init(rawValue: rawValue)
    }

    #if !os(Linux)
    /// Create a Radian angle by computing acsch.
    ///
    /// - Parameter acsch: The acsch value.
    /// - Throws: Throws an error if asech value is not valid.
    ///
    /// ## Reference:
    ///    [Wolfram Alpha](https://www.wolframalpha.com/input/?i=acsch+(x))
    ///
    ///    [Wolfram Documentation Center](http://reference.wolfram.com/language/ref/ArcCsch.html)
    public convenience init(acsch: CGFloat) throws {
        let rawValue: CGFloat = try Trigonometry.acsch(acsch)
        self.init(cgFloat: rawValue)
    }
    #endif
}
