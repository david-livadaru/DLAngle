//
//  ArgumentsCheckerTests.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import XCTest
@testable import DLAngle_iOS
import DLInterval_iOS

class ArgumentsCheckerTests: XCTestCase {
    func testValidValues() {
        let checker = ArgumentsChecker(value: 2, validValues: [1, 2, 3, 4])
        do {
            try checker.check()
        } catch {
            XCTFail("ArgumentsChecker throws exception for a valid value.")
        }
    }

    func testValidValues2() {
        let checker = ArgumentsChecker(value: 1.5, validValues: [1.0, 1.25, 1.5, 1.75, 2.0])
        do {
            try checker.check()
        } catch {
            XCTFail("ArgumentsChecker throws exception for a valid value.")
        }
    }

    func testValidRange() {
        let interval: Interval = [-1..1]
        let checker = ArgumentsChecker(value: 0, validInterval: interval)
        do {
            try checker.check()
        } catch {
            XCTFail("ArgumentsChecker throws exception for a valid value.")
        }
    }

    func testValidRange2() {
        let interval: Interval = [-1..1]
        let checker = ArgumentsChecker(value: -5, validInterval: interval)
        do {
            try checker.check()
            XCTFail("ArgumentsChecker throws exception for a valid value.")
        } catch {
        }
    }

    func testInvalidValues() {
        let checker = ArgumentsChecker(value: 15, invalidValues: [1, 2, 3, 4])
        do {
            try checker.check()
        } catch {
            XCTFail("ArgumentsChecker does not throw an exception for an invalid value.")
        }
    }

    func testInvalidValues2() {
        let checker = ArgumentsChecker(value: 2, invalidValues: [1, 2, 3, 4])
        do {
            try checker.check()
            XCTFail("ArgumentsChecker does not throw an exception for an invalid value.")
        } catch {
        }
    }

    func testInvalidValues3() {
        let checker = ArgumentsChecker(value: 10, validValues: [1, 2, 3, 4])
        do {
            try checker.check()
            XCTFail("ArgumentsChecker does not throw an exception for an invalid value.")
        } catch {
        }
    }

    func testInvalidValues4() {
        let checker = ArgumentsChecker(value: Double.pi, validValues: [1.0, 1.25, 1.5, 1.75, 2.0])
        do {
            try checker.check()
            XCTFail("ArgumentsChecker does not throw an exception for an invalid value.")
        } catch {
        }
    }

    func testInvalidRange() {
        let interval: Interval = [0..1]
        let checker = ArgumentsChecker(value: 2, invalidInterval: interval)
        do {
            try checker.check()
        } catch {
            XCTFail("ArgumentsChecker does not throw an exception for an invalid value.")
        }
    }

    func testInvalidRange2() {
        let interval: Interval = [-1..1]
        let checker = ArgumentsChecker(value: 0.5, invalidInterval: interval)
        do {
            try checker.check()
            XCTFail("ArgumentsChecker does not throw an exception for an invalid value.")
        } catch {
        }
    }
}
