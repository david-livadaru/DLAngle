//
//  Atan2ArgumentsCheckerTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/1/17.
//

import XCTest
@testable import DLAngle_iOS

class Atan2ArgumentsCheckerTests: XCTestCase {
    func testBothZero() {
        let checker = Atan2ArgumentsChecker(y: 0.0, x: 0.0)
        do {
            try checker.check()
            XCTFail()
        } catch {
        }
    }

    func testXZero() {
        let checker = Atan2ArgumentsChecker(y: 1.0, x: 0.0)
        do {
            try checker.check()
        } catch {
            XCTFail()
        }
    }

    func testYZero() {
        let checker = Atan2ArgumentsChecker(y: 0.0, x: 1.0)
        do {
            try checker.check()
        } catch {
            XCTFail()
        }
    }

    func testNothNonZero() {
        let checker = Atan2ArgumentsChecker(y: 1.0, x: 1.0)
        do {
            try checker.check()
        } catch {
            XCTFail()
        }
    }
}
