//
//  TrigonometricArgumentsCheckerTests.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//

import XCTest
@testable import DLAngle

class TrigonometricArgumentsCheckerTests: XCTestCase {
    static var allTests = [
        ("testAsinCheck", testAsinCheck),
        ("testAsinCheck2", testAsinCheck2),
        ("testAcosCheck", testAcosCheck),
        ("testAcosCheck2", testAcosCheck2),
        ("testTanCheck", testTanCheck),
        ("testTanCheck2", testTanCheck2),
        ("testTanCheck3", testTanCheck3),
        ("testCotCheck", testCotCheck),
        ("testCotCheck2", testCotCheck2),
        ("testCotCheck3", testCotCheck3),
        ("testSecCheck", testSecCheck),
        ("testSecCheck2", testSecCheck2),
        ("testSecCheck3", testSecCheck3),
        ("testCscCheck", testCscCheck),
        ("testCscCheck2", testCscCheck2),
        ("testCscCheck3", testCscCheck3)
    ]

    func testAsinCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: -2.0, function: .asin)
            try checker.check()
            XCTFail(throwFailedMessage(for: .asin))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        } catch {
        }
    }

    func testAsinCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: -0.456587, function: .asin)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }

    func testAcosCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: -7.0, function: .acos)
            try checker.check()
            XCTFail(throwFailedMessage(for: .acos))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        } catch {
        }
    }

    func testAcosCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: 0.909087, function: .acos)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }

    func testTanCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .tan)
            try checker.check()
            XCTFail(throwFailedMessage(for: .tan))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        } catch {
        }
    }

    func testTanCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 3 * Double.pi / 2), function: .tan)
            try checker.check()
            XCTFail(throwFailedMessage(for: .asin))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        } catch {
        }
    }

    func testTanCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .tan)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }

    func testCotCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 0.0), function: .cot)
            try checker.check()
            XCTFail(throwFailedMessage(for: .cot))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        } catch {
        }
    }

    func testCotCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .cot)
            try checker.check()
            XCTFail(throwFailedMessage(for: .cot))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        } catch {
        }
    }

    func testCotCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .cot)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }

    func testSecCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .sec)
            try checker.check()
            XCTFail(throwFailedMessage(for: .sec))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        } catch {
        }
    }

    func testSecCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 3 * Double.pi / 2), function: .sec)
            try checker.check()
            XCTFail(throwFailedMessage(for: .sec))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        } catch {
        }
    }

    func testSecCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .sec)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }

    func testCscCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .csc)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        }
    }

    func testCscCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .csc)
            try checker.check()
            XCTFail(throwFailedMessage(for: .csc))
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        } catch {
        }
    }

    func testCscCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .csc)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        }
    }
}
