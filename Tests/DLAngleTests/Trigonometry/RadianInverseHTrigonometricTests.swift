//
//  RadianInverseHTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

class RadianInverseHTrigonometricTests: XCTestCase {
    static var allTests = [
        ("testAsinh", testAsinh),
        ("testAsinhFloat", testAsinhFloat),
        ("testAsinhCGFloat", testAsinhCGFloat),
        ("testAsinhMinusInfinity", testAsinhMinusInfinity),
        ("testAsinhInfinity", testAsinhInfinity),
        ("testAcosh", testAcosh),
        ("testAcoshFloat", testAcoshFloat),
        ("testAcoshCGFloat", testAcoshCGFloat),
        ("testAcoshFailing", testAcoshFailing),
        ("testAcoshMinusInfinity", testAcoshMinusInfinity),
        ("testAcoshInfinity", testAcoshInfinity),
        ("testAtanh", testAtanh),
        ("testAtanhFloat", testAtanhFloat),
        ("testAtanhCGFloat", testAtanhCGFloat),
        ("testAtanhFailing", testAtanhFailing),
        ("testAtanhMinusInfinity", testAtanhMinusInfinity),
        ("testAtanhInfinity", testAtanhInfinity)
    ]

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
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAcoshFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acosh: value)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAcoshCGFloat() {
        do {
            let value = CGFloat(cosh_PI_2)
            let angle = try Radian(acosh: value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 2))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAcoshFailing() {
        do {
            _ = try Radian(acosh: 0.0)
            XCTFail(throwFailedMessage(for: .acosh))
        } catch {
        }
    }

    func testAcoshMinusInfinity() {
        do {
            _ = try Radian(acosh: -Double.infinity)
            XCTFail(throwFailedMessage(for: .acosh))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAcoshInfinity() {
        do {
            let angle = try Radian(acosh: Double.infinity)
            XCTAssert(angle.rawValue == Double.infinity)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAtanh() {
        do {
            let angle = try Radian(atanh: 0.0)
            XCTAssert(angle.rawValue == 0.0)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atanh))
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
            XCTFail(failMessage(forCatched: error, testing: .atanh))
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
            XCTFail(failMessage(forCatched: error, testing: .atanh))
        }
    }

    func testAtanhFailing() {
        do {
            _ = try Radian(atanh: 1.0)
            XCTFail(throwFailedMessage(for: .atanh))
        } catch {
        }
    }

    func testAtanhMinusInfinity() {
        do {
            _ = try Radian(atanh: -Double.infinity)
            XCTFail(throwFailedMessage(for: .atanh))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atanh))
        }
    }

    func testAtanhInfinity() {
        do {
            _ = try Radian(atanh: Double.infinity)
            XCTFail(throwFailedMessage(for: .atanh))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atanh))
        }
    }
}
