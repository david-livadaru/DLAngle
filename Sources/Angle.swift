import Foundation

public class Angle<Representation : FloatingPoint>: AngleType, InverseTrigonometricType, TrigonometricType {
    public typealias RawValue = Representation
    public var rawValue: Representation
    
    required public init(rawValue: Representation) {
        self.rawValue = rawValue
    }
}

