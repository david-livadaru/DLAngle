//
//  AbstractInterval.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

public struct AbstractInterval: IntervalType {
    public typealias Bound = Double
    
    public let lowerBound: Bound
    public let upperBound: Bound
    
    public var isEmpty: Bool {
        return lowerBound > upperBound
    }
}
