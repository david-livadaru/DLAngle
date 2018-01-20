//
//  InverseHyperbolicTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

class InverseHyperbolicTrigonometricTests: XCTestCase {
    static var allTests = [
        ("testAsinh", testAsinh),
        ("testAsinhFloat", testAsinhFloat),
        ("testAsinhCGFloat", testAsinhCGFloat),
        ("testAcosh", testAcosh),
        ("testAcoshFloat", testAcoshFloat),
        ("testAcoshCGFloat", testAcoshCGFloat),
        ("testAcoshThrowing", testAcoshThrowing),
        ("testAtanh", testAtanh),
        ("testAtanhFloat", testAtanhFloat),
        ("testAtanhCGFloat", testAtanhCGFloat),
        ("testAtanhThrowing", testAtanhThrowing),
        ("testAcoth", testAcoth),
        ("testAcothFloat", testAcothFloat),
        ("testAcothCGFloat", testAcothCGFloat),
        ("testAcotanhThrowing", testAcotanhThrowing),
        ("testAsech", testAsech),
        ("testAsechFloat", testAsechFloat),
        ("testAsechCGFloat", testAsechCGFloat),
        ("testAsechThrowing", testAsechThrowing),
        ("testAcsch", testAcsch),
        ("testAcschFloat", testAcschFloat),
        ("testAcschCGFloat", testAcschCGFloat),
        ("testAcschThrowing", testAcschThrowing)
    ]

    func testAsinh() {
        let value: Double = 11.548739357257748
        let angle: Radian = Trigonometry.asinh(value)
        XCTAssert(angle == Radian(rawValue: Double.pi))
    }

    func testAsinhFloat() {
        let value: Float = 11.548739357257748
        let angle: Radian = Trigonometry.asinh(value)
        Angle.equalityPrecision = 6
        XCTAssert(angle == Radian(rawValue: Double.pi))
    }

    func testAsinhCGFloat() {
        let value: CGFloat = 11.548739357257748
        let angle: Radian = Trigonometry.asinh(value)
        XCTAssert(angle == Radian(rawValue: Double.pi))
    }

    func testAcosh() {
        do {
            let value: Double = 11.591953275521520
            let angle: Radian = try Trigonometry.acosh(value)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAcoshFloat() {
        do {
            let value: Float = 11.591953275521520
            let angle: Radian = try Trigonometry.acosh(value)
            Radian.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAcoshCGFloat() {
        do {
            let value: CGFloat = 11.591953275521520
            let angle: Radian = try Trigonometry.acosh(value)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAcoshThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acosh(value)
            XCTFail(throwFailedMessage(for: .acosh))
        } catch {
        }
    }

    func testAtanh() {
        do {
            let value: Double = 0.5
            let angle: Radian = try Trigonometry.atanh(value)
            XCTAssert(angle == Radian(rawValue: 0.549306144334054))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acosh))
        }
    }

    func testAtanhFloat() {
        do {
            let value: Float = 0.5
            let angle: Radian = try Trigonometry.atanh(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: 0.549306144334054))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atanh))
        }
    }

    func testAtanhCGFloat() {
        do {
            let value: CGFloat = 0.5
            let angle: Radian = try Trigonometry.atanh(value)
            XCTAssert(angle == Radian(rawValue: 0.549306144334054))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atanh))
        }
    }

    func testAtanhThrowing() {
        do {
            let value: Double = -2.0
            let _: Radian = try Trigonometry.atanh(value)
            XCTFail(throwFailedMessage(for: .atanh))
        } catch {
        }
    }

    func testAcoth() {
        do {
            let value: Double = 1.5
            let angle: Radian = try Trigonometry.acoth(value)
            XCTAssert(angle == Radian(rawValue: 0.804718956217050))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acoth))
        }
    }

    func testAcothFloat() {
        do {
            let value: Float = 1.5
            let angle: Radian = try Trigonometry.acoth(value)
            XCTAssert(angle == Radian(rawValue: 0.804718956217050))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acoth))
        }
    }

    func testAcothCGFloat() {
        do {
            let value: CGFloat = 1.5
            let angle: Radian = try Trigonometry.acoth(value)
            XCTAssert(angle == Radian(rawValue: 0.804718956217050))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acoth))
        }
    }

    func testAcotanhThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acoth(value)
            XCTFail(throwFailedMessage(for: .acoth))
        } catch {
        }
    }

    func testAsech() {
        do {
            let value: Double = 0.25
            let angle: Radian = try Trigonometry.asech(value)
            XCTAssert(angle == Radian(rawValue: 2.063437068895560))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asech))
        }
    }

    func testAsechFloat() {
        do {
            let value: Float = 0.25
            let angle: Radian = try Trigonometry.asech(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: 2.063437068895560))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asech))
        }
    }

    func testAsechCGFloat() {
        do {
            let value: CGFloat = 0.25
            let angle: Radian = try Trigonometry.asech(value)
            XCTAssert(angle == Radian(rawValue: 2.063437068895560))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asech))
        }
    }

    func testAsechThrowing() {
        do {
            let value: Double = -1.0
            let _: Radian = try Trigonometry.asech(value)
            XCTFail(throwFailedMessage(for: .asech))
        } catch {
        }
    }

    func testAcsch() {
        do {
            let value: Double = 0.850918128239321
            let angle: Radian = try Trigonometry.acsch(value)
            XCTAssert(angle.rawValue.equals(to: 1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsch))
        }
    }

    func testAcschFloat() {
        do {
            let value: Float = 0.850918128239321
            let angle: Radian = try Trigonometry.acsch(value)
            let rawAngle = Float(angle.rawValue)
            XCTAssert(rawAngle.equals(to: 1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsch))
        }
    }

    func testAcschCGFloat() {
        do {
            let value: CGFloat = 0.850918128239321
            let angle: Radian = try Trigonometry.acsch(value)
            XCTAssert(angle.rawValue.equals(to: 1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsch))
        }
    }

    func testAcschThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acsch(value)
            XCTFail(throwFailedMessage(for: .acsch))
        } catch {
        }
    }
}
