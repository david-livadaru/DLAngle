//
//  RadianTrigonometryTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/1/17.
//

import XCTest
@testable import DLAngle_iOS

class RadianTrigonometryTests: XCTestCase {
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
            Radian.equalityPrecision = 6 // Float's precision
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
        let angle = Radian(atan: 0.0)
        XCTAssert(angle.rawValue == 0.0)
    }

    func testAtanFloat() {
        let value: Float = 1.0
        let angle = Radian(atan: value)
        Radian.equalityPrecision = 7
        XCTAssert(angle == Radian(rawValue: Double.pi / 4))
    }

    func testAtanCGFloat() {
        let value: CGFloat = -1.0
        let angle = Radian(atan: value)
        XCTAssert(angle.rawValue == -Double.pi / 4)
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

    func testAcot() {
        
    }
}
