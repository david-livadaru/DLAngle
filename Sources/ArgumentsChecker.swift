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
    
    init(value: Double, validInterval interval: Interval) {
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
        return Predicate(closure: { return array.contains(value) })
    }
    
    private static func predicate(for value: Double, in interval: Interval) -> Predicate {
        return Predicate(closure: { return interval.contains(value) })
    }
}
