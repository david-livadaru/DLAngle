//
//  GenericTrigonometryTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

class GenericTrigonometryTests: XCTestCase {
    static var allTests = [
        ("testAcosFloat", testAcosFloat),
        ("testAcoshFloat", testAcoshFloat),
        ("testAsinFloat", testAsinFloat),
        ("testAtanFloat", testAtanFloat),
        ("testAtan2Float", testAtan2Float),
        ("testAtanhFloat", testAtanhFloat),
        ("testSinhFloat", testSinhFloat),
        ("testCoshFloat", testCoshFloat),
        ("testTanhFloat", testTanhFloat)
    ]

    func testAcosFloat() {
        let value: Float = 1.0

        do {
            try Trigonometry.validate(value: value, for: .acos)
            let angle = try Radian(acos: value)
            let angleRaw = GenericTrigonometry.acos(value)
            XCTAssert(angleRaw.equals(to: angle.float))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }

    func testAcoshFloat() {
        let value: Float = 11.548739357257748

        do {
            try Trigonometry.validate(value: value, for: .acosh)
            let angle = try Radian(acosh: value)
            let angleRaw = GenericTrigonometry.acosh(value)
            XCTAssert(angleRaw.equals(to: angle.float))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAsinFloat() {
        let value: Float = 1.0

        do {
            try Trigonometry.validate(value: value, for: .asin)
            let angle = try Radian(asin: value)
            let angleRaw: Float = GenericTrigonometry.asin(value)
            XCTAssert(angleRaw.equals(to: angle.float, precision: 6))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }

    func testAtanFloat() {
        let value: Float = 1.0

        do {
            try Trigonometry.validate(value: value, for: .atan)
            let angle = try Radian(atan: value)
            let angleRaw = GenericTrigonometry.atan(value)
            XCTAssert(angleRaw.equals(to: angle.float))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan))
        }
    }

    func testAtan2Float() {
        let xValue: Float = 1.0
        let yValue: Float = 1.0

        do {
            let angle = try Radian(atan2Y: yValue, x: xValue)
            let angleRaw = GenericTrigonometry.atan2(y: yValue, x: xValue)
            XCTAssert(angleRaw.equals(to: angle.float))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtanhFloat() {
        let value: Float = 0.549306144334054

        do {
            try Trigonometry.validate(value: value, for: .atanh)
            let angle = try Radian(atanh: value)
            let angleRaw = GenericTrigonometry.atanh(value)
            XCTAssert(angleRaw.equals(to: angle.float))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atanh))
        }
    }

    func testSinhFloat() {
        let angleRaw: Float = Float.pi / 6

        let angle = Radian(rawValue: Double(angleRaw))
        let value: Float = angle.sinh()
        let rawValue = GenericTrigonometry.sinh(angleRaw)
        XCTAssert(value.equals(to: rawValue))
    }

    func testCoshFloat() {
        let angleRaw: Float = Float.pi / 6

        let angle = Radian(rawValue: Double(angleRaw))
        let value: Float = angle.cosh()
        let rawValue = GenericTrigonometry.cosh(angleRaw)
        XCTAssert(value.equals(to: rawValue))
    }

    func testTanhFloat() {
        let angleRaw: Float = Float.pi / 6

        let angle = Radian(rawValue: Double(angleRaw))
        let value: Float = angle.tanh()
        let rawValue = GenericTrigonometry.tanh(angleRaw)
        XCTAssert(value.equals(to: rawValue))
    }
}
