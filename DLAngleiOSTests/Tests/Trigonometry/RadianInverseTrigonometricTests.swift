//
//  RadianInverseTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class RadianInverseTrigonometricTests: XCTestCase {
    func testAsin() {
        do {
            let angle = try Radian(asin: 0.0)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }

    func testFloatAsin() {
        do {
            let value: Float = 1.0
            let angle = try Radian(asin: value)
            Radian.equalityPrecision = 6
            let pi_2 = Radian(rawValue: Double.pi / 2.0)
            XCTAssert(angle == pi_2)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }

    func testCGFloatAsin() {
        do {
            let value: CGFloat = -1.0
            let angle = try Radian(asin: value)
            angle.normalize()
            XCTAssert(angle.rawValue == Double.pi * 3.0 / 2.0)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }

    func testAsinThrowing() {
        do {
            _ = try Radian(asin: 2.0)
            XCTFail(throwFailedMessage(for: .asin))
        } catch {
        }
    }

    func testAcos() {
        do {
            let angle = try Radian(acos: 0.0)
            XCTAssert(angle.rawValue == Double.pi / 2.0)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }

    func testFloatAcos() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acos: value)
            let zeroAngle = Radian()
            XCTAssert(angle == zeroAngle)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }

    func testCGFloatAcos() {
        do {
            let value: CGFloat = -1.0
            let angle = try Radian(acos: value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }

    func testAcosThrowing() {
        do {
            _ = try Radian(acos: Double.infinity)
            XCTFail(throwFailedMessage(for: .acos))
        } catch {
        }
    }

    func testAtan() {
        do {
            let angle = try Radian(atan: 0.0)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan))
        }
    }

    func testAtanFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(atan: value)
            Radian.equalityPrecision = 7
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan))
        }
    }

    func testAtanCGFloat() {
        do {
            let value: CGFloat = -1.0
            let angle = try Radian(atan: value)
            XCTAssert(angle.rawValue == -Double.pi / 4)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan))
        }
    }

    func testAtanMinusInfinity() {
        do {
            _ = try Radian(atan: -Double.infinity)
            XCTFail(throwFailedMessage(for: .atan))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan))
        }
    }

    func testAtanInfinity() {
        do {
            _ = try Radian(atan: Double.infinity)
            XCTFail(throwFailedMessage(for: .atan))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan))
        }
    }

    func testAtan2() {
        do {
            let angle = try Radian(atan2Y: 1.0, x: 1.0)
            XCTAssert(angle.rawValue == Double.pi / 4)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtan2Float() {
        do {
            let x: Float = 1.0
            let y: Float = 0.0
            let angle = try Radian(atan2Y: y, x: x)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtan2CGFloat() {
        do {
            let x: CGFloat = -1.0
            let y: CGFloat = 0.0
            let angle = try Radian(atan2Y: y, x: x)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtan2MinusInfinityMinusInfinity() {
        do {
            _ = try Radian(atan2Y: -Double.infinity, x: -Double.infinity)
            XCTFail(throwFailedMessage(for: .atan2))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtan2MinusInfinityInfinity() {
        do {
            _ = try Radian(atan2Y: -Double.infinity, x: Double.infinity)
            XCTFail(throwFailedMessage(for: .atan2))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtan2InfinityMinusInfinity() {
        do {
            _ = try Radian(atan2Y: Double.infinity, x: -Double.infinity)
            XCTFail(throwFailedMessage(for: .atan2))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtan2InfinityInfinity() {
        do {
            _ = try Radian(atan2Y: Double.infinity, x: Double.infinity)
            XCTFail(throwFailedMessage(for: .atan2))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }
}
