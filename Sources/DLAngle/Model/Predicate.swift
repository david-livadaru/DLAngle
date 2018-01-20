//
//  Predicate.swift
//  DLAngle
//
//  Created by David Livadaru on 3/13/17.
//

import Foundation
import DLInterval

public struct Predicate {
    public typealias Closure = () -> Bool
    private let _predicate: Closure

    public init(closure predicate: @escaping Closure) {
        _predicate = predicate
    }

    public init(array: [Double], value: Double) {
        _predicate = {
            return array.contains(value)
        }
    }

    public init<I: IntervalType>(interval: I, value: Double) {
        _predicate = {
            return interval.contains(value)
        }
    }

    public init(not predicate: Predicate) {
        _predicate = {
            return !predicate.evaluate()
        }
    }

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

    public func evaluate() -> Bool {
        return _predicate()
    }
}
