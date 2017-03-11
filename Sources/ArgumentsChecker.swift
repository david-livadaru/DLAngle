//
//  ArgumentsChecker.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import Foundation

/// An abstract utility class which provides an interface to check values.
class ArgumentsChecker<Type : Comparable> {
    private let value: Type
    private let predicate: NSPredicate
    
    // MARK: Initialization
    
    init(value: Type, validValues: [Type]) {
        self.value = value
        self.predicate = NSPredicate(format: "SELF IN %@", validValues)
    }
    
    init(value: Type, validRange: ClosedRange<Type>) {
        self.value = value
        self.predicate = ArgumentsChecker.predicate(for: validRange)
    }
    
    init(value: Type, invalidValues: [Type]) {
        self.value = value
        self.predicate = NSPredicate(format: "SELF NOT IN %@", invalidValues)
    }
    
    init(value: Type, invalidRange: ClosedRange<Type>) {
        self.value = value
        self.predicate = NSCompoundPredicate(notPredicateWithSubpredicate: ArgumentsChecker.predicate(for: invalidRange))
    }
    
    // MARK: Check
    
    func check() -> Bool {
        return predicate.evaluate(with: value)
    }
    
    // MARK: Private functionality
    
    private static func predicate(for range: ClosedRange<Type>) -> NSPredicate {
        return NSPredicate(format: "SELF BETWEEN %@", [range.lowerBound, range.upperBound])
    }
}
