import Foundation

public class Degree<Representation: FloatingPoint>: Angle<Representation> {
    public convenience init(radians: Representation) {
        let degrees: RawValue = 180 * radians / Representation.pi
        self.init(rawValue: degrees)
    }
    public convenience init(radian: Radian<Representation>) {
        self.init(radians: radian.rawValue)
    }
    
    public static func +(lhs: Degree<Representation>, rhs: Degree<Representation>) -> Degree<Representation> {
        return Degree<Representation>(rawValue: lhs.rawValue + rhs.rawValue)
    }
//
//    public static func +(lhs: Degree<Representation>, rhs: Representation) -> Degree<Representation> {
//        return Degree<Representation>(rawValue: lhs.rawValue + rhs)
//    }
//
//    public static func +(lhs: Representation, rhs: Degree<Representation>) -> Degree<Representation> {
//        return Degree<Representation>(rawValue: lhs + rhs.rawValue)
//    }
//
    public static func +=(lhs: inout Degree<Representation>, rhs: Degree<Representation>) {
        lhs.rawValue += rhs.rawValue
    }
//
//    public static func +=(lhs: inout Degree<Representation>, rhs: Representation) {
//        lhs.rawValue += rhs
//    }
//
    public static func -(lhs: Degree<Representation>, rhs: Degree<Representation>) -> Degree<Representation> {
        return Degree<Representation>(rawValue: lhs.rawValue - rhs.rawValue)
    }
    
//    public static func -(lhs: Representation, rhs: Degree<Representation>) -> Degree<Representation> {
//        return Degree<Representation>(rawValue: lhs - rhs.rawValue)
//    }
//
//    public static func -(lhs: Degree<Representation>, rhs: Representation) -> Degree<Representation> {
//        return Degree<Representation>(rawValue: lhs.rawValue - rhs)
//    }
//
    public static func -=(lhs: inout Degree<Representation>, rhs: Degree<Representation>) {
        lhs.rawValue -= rhs.rawValue
    }
//    
//    public static func -=(lhs: inout Degree<Representation>, rhs: Representation) {
//        lhs.rawValue -= rhs
//    }
    
    public static func *(lhs: Degree<Representation>, rhs: Representation) -> Degree<Representation> {
        return Degree<Representation>(rawValue: lhs.rawValue * rhs)
    }
    
    public static func *(lhs: Representation, rhs: Degree<Representation>) -> Degree<Representation> {
        return Degree<Representation>(rawValue: lhs * rhs.rawValue)
    }
    
    public static func *=(lhs: inout Degree<Representation>, rhs: Representation) {
        lhs.rawValue *= rhs
    }
    
    public static func /(lhs: Degree<Representation>, rhs: Representation) -> Degree<Representation> {
        return Degree<Representation>(rawValue: lhs.rawValue / rhs)
    }
    
    public static func /(lhs: Representation, rhs: Degree<Representation>) -> Degree<Representation> {
        return Degree<Representation>(rawValue: lhs / rhs.rawValue)
    }
    
    public static func /=(lhs: inout Degree<Representation>, rhs: Representation) {
        lhs.rawValue /= rhs
    }
}

