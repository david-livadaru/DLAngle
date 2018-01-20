//
//  Atan2ArgumentsCheckerTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/1/17.
//

import XCTest
@testable import DLAngle

class Atan2ArgumentsCheckerTests: XCTestCase {
    static var allTests = [
        ("testBothZero", testBothZero),
        ("testXZero", testXZero),
        ("testYZero", testYZero),
        ("testNothNonZero", testNothNonZero)
    ]

    func testBothZero() {
        let checker = Atan2ArgumentsChecker(y: 0.0, x: 0.0)
        do {
            try checker.check()
            XCTFail("Atan2ArgumentsChecker does not throw an error for invalid parameters.")
        } catch {
        }
    }

    func testXZero() {
        let checker = Atan2ArgumentsChecker(y: 1.0, x: 0.0)
        do {
            try checker.check()
        } catch {
            XCTFail("Atan2ArgumentsChecker throws \(error) for valid parameters.")
        }
    }

    func testYZero() {
        let checker = Atan2ArgumentsChecker(y: 0.0, x: 1.0)
        do {
            try checker.check()
        } catch {
            XCTFail("Atan2ArgumentsChecker throws \(error) for valid parameters.")
        }
    }

    func testNothNonZero() {
        let checker = Atan2ArgumentsChecker(y: 1.0, x: 1.0)
        do {
            try checker.check()
        } catch {
            XCTFail("Atan2ArgumentsChecker throws \(error) for valid parameters.")
        }
    }
}
