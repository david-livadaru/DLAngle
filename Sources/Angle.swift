//
//  Angle.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import Foundation

public class Angle<Representation : FloatingPoint>: AngleType, InverseTrigonometricType, TrigonometricType {
    public typealias RawValue = Representation
    public var rawValue: Representation
    
    required public init(rawValue: Representation) {
        self.rawValue = rawValue
    }
}

