//
//  ArgumentsChecker.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import Foundation
#if os(iOS)
    import DLInterval_iOS
#elseif os(watchOS)
    import DLInteval_watchOS
#elseif os(tvOS)
    import DLInteval_tvOS
#elseif os(macOS)
    import DLInteval_macOS
#elseif os(Linux)
    import DLInteval
#endif

/// An abstract utility class which provides an interface to check values.
class ArgumentsChecker {
    private let predicate: Predicate

    // MARK: Initialization

    init(predicate: Predicate) {
        self.predicate = predicate
    }

    init(value: Double, validValues values: [Double]) {
        predicate = ArgumentsChecker.predicate(for: value, in: values)
    }

    init<I: IntervalType>(value: Double, validInterval interval: I) {
        predicate = ArgumentsChecker.predicate(for: value, in: interval)
    }

    init(value: Double, invalidValues values: [Double]) {
        predicate = Predicate(not: ArgumentsChecker.predicate(for: value, in: values))
    }

    init<I: IntervalType>(value: Double, invalidInterval interval: I) {
        predicate = Predicate(not: ArgumentsChecker.predicate(for: value, in: interval))
    }

    // MARK: Check

    func check() throws {
        if !predicate.evaluate() {
            throw TrigonometricError.invalidParameter
        }
    }

    // MARK: Private functionality

    private static func predicate(for value: Double, in array: [Double]) -> Predicate {
        return Predicate(array: array, value: value)
    }

    private static func predicate<I: IntervalType>(for value: Double, in interval: I) -> Predicate {
        return Predicate(interval: interval, value: value)
    }
}
