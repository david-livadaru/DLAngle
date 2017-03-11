//
//  ArgumentsCheckerTests.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import XCTest

class ArgumentsCheckerTests: XCTestCase {
    func testValidValues() {
        let checker = ArgumentsChecker<Int>(value: 2, validValues: [1, 2, 3, 4])
        XCTAssert(checker.check() == true, "Checker fails to validate array of valid values.")
    }
    
    func testValidValues2() {
        let checker = ArgumentsChecker<Float>(value: 1.5, validValues: [1.0, 1.25, 1.5, 1.75, 2.0])
        XCTAssert(checker.check() == true, "Checker fails to validate array of valid values.")
    }
    
    func testValidValues3() {
        let checker = ArgumentsChecker<Int>(value: 10, validValues: [1, 2, 3, 4])
        XCTAssert(checker.check() == false, "Checker fails to validate array of valid values.")
    }
    
    func testValidValues4() {
        let checker = ArgumentsChecker<Float>(value: Float.pi, validValues: [1.0, 1.25, 1.5, 1.75, 2.0])
        XCTAssert(checker.check() == false, "Checker fails to validate array of valid values.")
    }
    
    func testValidRange() {
        let checker = ArgumentsChecker<Int>(value: 0, validRange: -1...1)
        XCTAssert(checker.check() == true, "Checker fails to validate range of valid values.")
    }
    
    func testValidRange2() {
        let checker = ArgumentsChecker<Int>(value: -5, validRange: -1...1)
        XCTAssert(checker.check() == false, "Checker fails to validate range of valid values.")
    }
    
    func testInvalidValues() {
        let checker = ArgumentsChecker<Int>(value: 15, invalidValues: [1, 2, 3, 4])
        XCTAssert(checker.check() == true, "Checker fails to validate array of invalid values.")
    }
    
    func testInvalidValues2() {
        let checker = ArgumentsChecker<Int>(value: 2, invalidValues: [1, 2, 3, 4])
        XCTAssert(checker.check() == false, "Checker fails to validate array of invalid values.")
    }
    
    func testInvalidRange() {
        let checker = ArgumentsChecker<Int>(value: 2, invalidRange: 0...1)
        XCTAssert(checker.check() == true, "Checker fails to validate range of invalid values.")
    }
    
    func testInvalidRange2() {
        let checker = ArgumentsChecker<Float>(value: 0.5, invalidRange: 0...1)
        XCTAssert(checker.check() == false, "Checker fails to validate range of invalid values.")
    }
}
