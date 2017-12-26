//
//  PredicateTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/1/17.
//

import XCTest
@testable import DLAngle_iOS
import DLInterval_iOS

class PredicateTests: XCTestCase {
    func testClosurePredicate() {
        let predicate = Predicate { () -> Bool in
            return false
        }
        XCTAssertFalse(predicate.evaluate())
    }

    func testArrayPredicateForSuccess() {
        let predicate = Predicate(array: [1.0, 2.0, 3.0], value: 2.0)
        XCTAssert(predicate.evaluate())
    }

    func testArrayPredicateForFailure() {
        let predicate = Predicate(array: [1.0, 2.0, 3.0], value: 5.0)
        XCTAssertFalse(predicate.evaluate())
    }

    func testIntervalPredicate() {
        let interval: Interval = 1.0.<.2.0
        let predicate = Predicate(interval: interval, value: 1.5)
        XCTAssert(predicate.evaluate())
    }

    func testNotPredicate() {
        let interval: Interval = 1.0.<.2.0
        let predicate = Predicate(interval: interval, value: 2.5)
        let notPredicate = Predicate(not: predicate)
        XCTAssert(notPredicate.evaluate())
    }

    func testAndPredicateForSuccess() {
        let firstPredicate = Predicate(closure: { true })
        let secondPredicate = Predicate(closure: { true })
        let predicate = Predicate(and: [firstPredicate, secondPredicate])
        XCTAssert(predicate.evaluate())
    }

    func testAndPredicateForFailure() {
        let firstPredicate = Predicate(closure: { false })
        let secondPredicate = Predicate(closure: { true })
        let predicate = Predicate(and: [firstPredicate, secondPredicate])
        XCTAssertFalse(predicate.evaluate())
    }

    func testOrPredicateForSuccess() {
        let firstPredicate = Predicate(closure: { false })
        let secondPredicate = Predicate(closure: { true })
        let predicate = Predicate(or: [firstPredicate, secondPredicate])
        XCTAssert(predicate.evaluate())
    }

    func testOrPredicateForFailure() {
        let firstPredicate = Predicate(closure: { false })
        let secondPredicate = Predicate(closure: { false })
        let predicate = Predicate(or: [firstPredicate, secondPredicate])
        XCTAssertFalse(predicate.evaluate())
    }
}
