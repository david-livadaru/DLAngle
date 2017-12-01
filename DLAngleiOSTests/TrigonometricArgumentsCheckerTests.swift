//
//  TrigonometricArgumentsCheckerTests.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import XCTest
@testable import DLAngle_iOS

class TrigonometricArgumentsCheckerTests: XCTestCase {
    func testAsinCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: -2.0, function: .asin)
            try checker.check()
            XCTFail()
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
            XCTFail()
        }
    }

    func testAcosCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: -7.0, function: .acos)
            try checker.check()
            XCTFail()
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
            XCTFail()
        }
    }

    func testTanCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .tan)
            try checker.check()
            XCTFail()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        } catch {
        }
    }

    func testTanCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 3 * Double.pi / 2), function: .tan)
            try checker.check()
            XCTFail()
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
            XCTFail()
        }
    }

    func testCotCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 0.0), function: .cot)
            try checker.check()
            XCTFail()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        } catch {
        }
    }

    func testCotCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .cot)
            try checker.check()
            XCTFail()
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
            XCTFail()
        }
    }

    func testSecCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .sec)
            try checker.check()
            XCTFail()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        } catch {
        }
    }

    func testSecCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 3 * Double.pi / 2), function: .sec)
            try checker.check()
            XCTFail()
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
            XCTFail()
        }
    }

    func testCosecCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .cosec)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .cosec))
        } catch {
            XCTFail()
        }
    }

    func testCosecCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .cosec)
            try checker.check()
            XCTFail()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .cosec))
        } catch {
        }
    }

    func testCosecCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .cosec)
            try checker.check()
        } catch let error as TrigonometricError where error == .undefinedFunction {
            XCTFail(failMessage(forCatched: error, testing: .cosec))
        } catch {
            XCTFail()
        }
    }

    // MARK: Fail messages

    private func failMessage(forCatched error: Error,
                         testing function: TrigonometricFunction) -> String {
        return "\(function.rawValue.capitalized) check failed due to error \(error.localizedDescription)"
    }
}
