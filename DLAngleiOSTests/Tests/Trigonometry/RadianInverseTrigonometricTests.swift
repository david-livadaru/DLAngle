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
            XCTFail()
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
            XCTFail()
        }
    }

    func testCGFloatAsin() {
        do {
            let value: CGFloat = -1.0
            let angle = try Radian(asin: value)
            angle.normalize()
            XCTAssert(angle.rawValue == Double.pi * 3.0 / 2.0)
        } catch {
            XCTFail()
        }
    }

    func testAsinThrowing() {
        do {
            _ = try Radian(asin: 2.0)
            XCTFail()
        } catch {
        }
    }

    func testAcos() {
        do {
            let angle = try Radian(acos: 0.0)
            XCTAssert(angle.rawValue == Double.pi / 2.0)
        } catch {
            XCTFail()
        }
    }

    func testFloatAcos() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acos: value)
            let zeroAngle = Radian()
            XCTAssert(angle == zeroAngle)
        } catch {
            XCTFail()
        }
    }

    func testCGFloatAcos() {
        do {
            let value: CGFloat = -1.0
            let angle = try Radian(acos: value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail()
        }
    }

    func testAcosThrowing() {
        do {
            _ = try Radian(acos: Double.infinity)
            XCTFail()
        } catch {
        }
    }

    func testAtan() {
        do {
            let angle = try Radian(atan: 0.0)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail()
        }
    }

    func testAtanFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(atan: value)
            Radian.equalityPrecision = 7
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail()
        }
    }

    func testAtanCGFloat() {
        do {
            let value: CGFloat = -1.0
            let angle = try Radian(atan: value)
            XCTAssert(angle.rawValue == -Double.pi / 4)
        } catch {
            XCTFail()
        }
    }

    func testAtanMinusInfinity() {
        do {
            _ = try Radian(atan: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testAtanInfinity() {
        do {
            _ = try Radian(atan: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testAtan2() {
        do {
            let angle = try Radian(atan2Y: 1.0, x: 1.0)
            XCTAssert(angle.rawValue == Double.pi / 4)
        } catch {
            XCTFail()
        }
    }

    func testAtan2Float() {
        do {
            let x: Float = 1.0
            let y: Float = 0.0
            let angle = try Radian(atan2Y: y, x: x)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail()
        }
    }

    func testAtan2CGFloat() {
        do {
            let x: CGFloat = -1.0
            let y: CGFloat = 0.0
            let angle = try Radian(atan2Y: y, x: x)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail()
        }
    }

    func testAtan2MinusInfinityMinusInfinity() {
        do {
            _ = try Radian(atan2Y: -Double.infinity, x: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail()
        }
    }

    func testAtan2MinusInfinityInfinity() {
        do {
            _ = try Radian(atan2Y: -Double.infinity, x: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail()
        }
    }

    func testAtan2InfinityMinusInfinity() {
        do {
            _ = try Radian(atan2Y: Double.infinity, x: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail()
        }
    }

    func testAtan2InfinityInfinity() {
        do {
            _ = try Radian(atan2Y: Double.infinity, x: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail()
        }
    }
}
