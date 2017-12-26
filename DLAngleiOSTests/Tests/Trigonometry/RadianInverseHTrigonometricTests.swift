//
//  RadianInverseHTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class RadianInverseHTrigonometricTests: XCTestCase {
    func testAsinh() {
        let angle = Radian(asinh: sinh_PI)
        XCTAssert(angle.rawValue == Double.pi)
    }

    func testAsinhFloat() {
        let value = Float(sinh_PI_2)
        let angle = Radian(asinh: value)
        Radian.equalityPrecision = 6
        XCTAssert(angle == Radian(rawValue: Double.pi / 2))
    }

    func testAsinhCGFloat() {
        let value = CGFloat(sinh_PI_4)
        let angle = Radian(asinh: value)
        Radian.equalityPrecision = 14
        XCTAssert(angle == Radian(rawValue: Double.pi / 4))
    }

    func testAsinhMinusInfinity() {
        let angle = Radian(asinh: -Double.infinity)
        XCTAssert(angle.rawValue == -Double.infinity)
    }

    func testAsinhInfinity() {
        let angle = Radian(asinh: Double.infinity)
        XCTAssert(angle.rawValue == Double.infinity)
    }

    func testAcosh() {
        do {
            let angle = try Radian(acosh: cosh_PI)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail()
        }
    }

    func testAcoshFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acosh: value)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail()
        }
    }

    func testAcoshCGFloat() {
        do {
            let value = CGFloat(cosh_PI_2)
            let angle = try Radian(acosh: value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 2))
        } catch {
            XCTFail()
        }
    }

    func testAcoshFailing() {
        do {
            _ = try Radian(acosh: 0.0)
            XCTFail()
        } catch {
        }
    }

    func testAcoshMinusInfinity() {
        do {
            _ = try Radian(acosh: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail()
        }
    }

    func testAcoshInfinity() {
        do {
            let angle = try Radian(acosh: Double.infinity)
            XCTAssert(angle.rawValue == Double.infinity)
        } catch {
            XCTFail()
        }
    }

    func testAtanh() {
        do {
            let angle = try Radian(atanh: 0.0)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail()
        }
    }

    func testAtanhFloat() {
        let tanh_half = 0.549306144334054
        do {
            let value: Float = 0.5
            let angle = try Radian(atanh: value)
            Radian.equalityPrecision = 7
            XCTAssert(angle == Radian(rawValue: tanh_half))
        } catch {
            XCTFail()
        }
    }

    func testAtanhCGFloat() {
        let tanh_quarter = 0.255412811882995
        do {
            let value: CGFloat = 0.25
            let angle = try Radian(atanh: value)
            Radian.equalityPrecision = 14
            XCTAssert(angle == Radian(rawValue: tanh_quarter))
        } catch {
            XCTFail()
        }
    }

    func testAtanhFailing() {
        do {
            _ = try Radian(atanh: 1.0)
            XCTFail()
        } catch {
        }
    }

    func testAtanhMinusInfinity() {
        do {
            _ = try Radian(atanh: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail()
        }
    }

    func testAtanhInfinity() {
        do {
            _ = try Radian(atanh: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail()
        }
    }
}
