//
//  IntervalBoundary.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

public struct IntervalBoundary: Comparable, NSPredicateFormatConvertible, NSPredicateConvertible {
    public let value: Double
    public let boundary: Boundary
    
    public init(value: Double, boundary: Boundary) {
        self.value = value
        self.boundary = boundary
    }
    
    // MARK: NSPredicateFormatConvertible
    
    public var predicateFormat: String {
        return "SELF \(boundary.predicateFormat) \(value)"
    }
    
    // MARK: NSPredicateConvertible
    
    public var predicate: NSPredicate {
        return NSPredicate(format: predicateFormat)
    }
    
//    // MARK: Public interface
//    
//    public func contains(_ element: Double) -> Bool {
//        return predicate.evaluate(with: element)
//    }
    
    // MARK: Equatable
    
    public static func ==(lhs: IntervalBoundary, rhs: IntervalBoundary) -> Bool {
        return lhs.boundary == rhs.boundary && lhs.value == rhs.value
    }
    
    // MARK: Comparable
    
    public static func <(lhs: IntervalBoundary, rhs: IntervalBoundary) -> Bool {
        if lhs.value == rhs.value  {
            return lhs.boundary < rhs.boundary
        } else {
            return lhs.value < rhs.value
        }
    }
}
