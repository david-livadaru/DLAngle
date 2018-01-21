//
//  RadianConstantsTests.swift
//  DLAngleTests
//
//  Created by David Livadaru on 1/21/18.
//

import XCTest
@testable import DLAngle

class RadianConstantsTests: XCTestCase {
    static var allTests = [
        ("testPiConstant", testPiConstant),
        ("testPi_2_constant", testPi_2_constant),
        ("testPi_3_constant", testPi_3_constant),
        ("testPi_4_constant", testPi_4_constant),
        ("testPi_6_constant", testPi_6_constant),
        ("testOperationsWithConstants", testOperationsWithConstants)
    ]

    func testPiConstant() {
        let pi = Radian.pi
        XCTAssertEqual(pi.rawValue, Double.pi)
    }

    func testPi_2_constant() {
        let pi_2 = Radian.pi_2
        XCTAssertEqual(pi_2.rawValue, Double.pi / 2)
    }

    func testPi_3_constant() {
        let pi_3 = Radian.pi_3
        XCTAssertEqual(pi_3.rawValue, Double.pi / 3)
    }

    func testPi_4_constant() {
        let pi_4 = Radian.pi_4
        XCTAssertEqual(pi_4.rawValue, Double.pi / 4)
    }

    func testPi_6_constant() {
        let pi_6 = Radian.pi_6
        XCTAssertEqual(pi_6.rawValue, Double.pi / 6)
    }

    func testOperationsWithConstants() {
        let sum = Radian.pi_2 + Radian.pi_4
        XCTAssertEqual(sum.rawValue, 3 * Double.pi / 4)
    }

    func testSinWithConstant() {
        do {
            let sinValue: Double = try Radian.pi.cos()
            XCTAssert(sinValue.isEqual(to: -1.0))
        } catch {
            XCTFail("Cos function from Radian did throw unexpectedError \(error).")
        }
    }
}
