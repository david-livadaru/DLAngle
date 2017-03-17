//
//  ArgumentsChecker.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import Foundation

/// An abstract utility class which provides an interface to check values.
class ArgumentsChecker {
    private let predicate: Predicate
    
    // MARK: Initialization
    
    init(value: Double, validValues values: [Double]) {
        predicate = ArgumentsChecker.predicate(for: value, in: values)
    }
    
    init(value: Double, validInterval interval: IntervalType) {
        predicate = ArgumentsChecker.predicate(for: value, in: interval)
    }
    
    init(value: Double, invalidValues values: [Double]) {
        predicate = Predicate(not: ArgumentsChecker.predicate(for: value, in: values))
        
    }
    
    init(value: Double, invalidInterval interval: Interval) {
        predicate = Predicate(not: ArgumentsChecker.predicate(for: value, in: interval))
    }
    
    // MARK: Check
    
    func check() -> Bool {
        return predicate.evaluate()
    }
    
    // MARK: Private functionality
    
    private static func predicate(for value: Double, in array: [Double]) -> Predicate {
        return Predicate(array: array, value: value)
    }
    
    private static func predicate(for value: Double, in interval: IntervalType) -> Predicate {
        return Predicate(interval: interval, value: value)
    }
}
