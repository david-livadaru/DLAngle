//
//  IntervalType.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

public protocol IntervalType {
    associatedtype Bound: Comparable
    
    var lowerBound: Bound { get }
    var upperBound: Bound { get }
    
    var isEmpty: Bool { get }
    
    func contains(_ element: Bound) -> Bool
}

extension IntervalType {
    public func contains(_ element: Bound) -> Bool {
        return element <= upperBound && element >= lowerBound
    }
}
