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
            XCTAssert(checker.check() == false, failMessage(testing: .asin))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }
    
    func testAsinCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: -0.456587, function: .asin)
            XCTAssert(checker.check(), failMessage(testing: .asin))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }
    
    func testAcosCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: -7.0, function: .acos)
            XCTAssert(checker.check() == false, failMessage(testing: .acos))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }
    
    func testAcosCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: 0.909087, function: .acos)
            XCTAssert(checker.check(), failMessage(testing: .acos))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }
    
    func testAtan2Check() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: 0.0, function: .atan2)
            XCTAssert(checker.check() == false, failMessage(testing: .atan2))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }
    
    func testAtan2Check2() {
        do {
            let checker = try TrigonometricArgumentsChecker(value: 32.5, function: .atan2)
            XCTAssert(checker.check(), failMessage(testing: .atan2))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }
    
    func testTanCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .tan)
            XCTAssert(checker.check() == false, failMessage(testing: .tan))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }
    
    func testTanCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 3 * Double.pi / 2), function: .tan)
            XCTAssert(checker.check() == false, failMessage(testing: .tan))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }
    
    func testTanCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .tan)
            XCTAssert(checker.check(), failMessage(testing: .tan))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }
    
    func testCotCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 0.0), function: .cot)
            XCTAssert(checker.check() == false, failMessage(testing: .cot))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }
    
    func testCotCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .cot)
            XCTAssert(checker.check() == false, failMessage(testing: .cot))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }
    
    func testCotCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .cot)
            XCTAssert(checker.check(), failMessage(testing: .cot))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }
    
    func testSecCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .sec)
            XCTAssert(checker.check() == false, failMessage(testing: .sec))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }
    
    func testSecCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: 3 * Double.pi / 2), function: .sec)
            XCTAssert(checker.check() == false, failMessage(testing: .sec))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }
    
    func testSecCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .sec)
            XCTAssert(checker.check(), failMessage(testing: .sec))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }
    
    func testCosecCheck() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .cosec)
            XCTAssert(checker.check(), failMessage(testing: .cosec))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cosec))
        }
    }
    
    func testCosecCheck2() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi), function: .cosec)
            XCTAssert(checker.check() == false, failMessage(testing: .cosec))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cosec))
        }
    }
    
    func testCosecCheck3() {
        do {
            let checker = try TrigonometricArgumentsChecker(angle: Radian(rawValue: Double.pi / 2), function: .cosec)
            XCTAssert(checker.check(), failMessage(testing: .cosec))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cosec))
        }
    }
    
    // MARK: Fail messages
    
    private func failMessage(testing function: TrigonometricFunction) -> String {
        return "Trigonometric checker failed to check value for \(function) function."
    }
    
    private func failMessage(forCatched error: Error,
                         testing function: TrigonometricFunction) -> String {
        return "\(function.rawValue.capitalized) check failed due to error \(error.localizedDescription)"
    }
}
