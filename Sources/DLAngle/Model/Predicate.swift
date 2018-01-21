//
//  Predicate.swift
//  DLAngle
//
//  Created by David Livadaru on 3/13/17.
//

import Foundation
import DLInterval

/// A convenient type to check values.
public struct Predicate {
    public typealias Closure = () -> Bool
    private let _predicate: Closure

    /// Create a predicate with a closure.
    ///
    /// - Parameter predicate: The closure to use for predicate.
    public init(closure predicate: @escaping Closure) {
        _predicate = predicate
    }

    /// Create a predicate which checks if a value is contained in an array.
    ///
    /// - Parameters:
    ///   - array: The array of values.
    ///   - value: The value to check.
    public init(array: [Double], value: Double) {
        _predicate = {
            return array.contains(value)
        }
    }

    /// Create a predicate which checks if a value is contained within the bounds of an interval.
    ///
    /// - Parameters:
    ///   - interval: The interval.
    ///   - value: The value to check.
    public init<I: IntervalType>(interval: I, value: Double) {
        _predicate = {
            return interval.contains(value)
        }
    }

    /// Create a predicate which negates other predicate.
    ///
    /// - Parameter predicate: The predicate to negate.
    public init(not predicate: Predicate) {
        _predicate = {
            return !predicate.evaluate()
        }
    }

    /// Create a predicate which aggregates other predicates by applying *and* operation.
    ///
    /// - Parameter predicates: The predicated to aggregate.
    public init(and predicates: [Predicate]) {
        _predicate = {
            for predicate in predicates {
                if predicate.evaluate() == false {
                    return false
                }
            }
            return true
        }
    }

    /// Create a predicate which aggregates other predicates by applying *or* operation.
    ///
    /// - Parameter predicates: The predicated to aggregate.
    public init(or predicates: [Predicate]) {
        _predicate = {
            for predicate in predicates {
                if predicate.evaluate() {
                    return true
                }
            }
            return false
        }
    }

    /// Evalutes the predicate.
    ///
    /// - Returns: The result of evaluation.
    public func evaluate() -> Bool {
        return _predicate()
    }
}
