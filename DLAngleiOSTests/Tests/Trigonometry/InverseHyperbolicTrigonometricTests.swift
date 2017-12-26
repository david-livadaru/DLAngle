//
//  InverseHyperbolicTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class InverseHyperbolicTrigonometricTests: XCTestCase {
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
            XCTFail()
        }
    }

    func testAcoshFloat() {
        do {
            let value: Float = 11.591953275521520
            let angle: Radian = try Trigonometry.acosh(value)
            Radian.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail()
        }
    }

    func testAcoshCGFloat() {
        do {
            let value: CGFloat = 11.591953275521520
            let angle: Radian = try Trigonometry.acosh(value)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail()
        }
    }

    func testAcoshThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acosh(value)
            XCTFail()
        } catch {
        }
    }

    func testAtanh() {
        do {
            let value: Double = 0.5
            let angle: Radian = try Trigonometry.atanh(value)
            XCTAssert(angle == Radian(rawValue: 0.549306144334054))
        } catch {
            XCTFail()
        }
    }

    func testAtanhFloat() {
        do {
            let value: Float = 0.5
            let angle: Radian = try Trigonometry.atanh(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: 0.549306144334054))
        } catch {
            XCTFail()
        }
    }

    func testAtanhCGFloat() {
        do {
            let value: CGFloat = 0.5
            let angle: Radian = try Trigonometry.atanh(value)
            XCTAssert(angle == Radian(rawValue: 0.549306144334054))
        } catch {
            XCTFail()
        }
    }

    func testAtanhThrowing() {
        do {
            let value: Double = -2.0
            let _: Radian = try Trigonometry.atanh(value)
            XCTFail()
        } catch {
        }
    }

    func testAcotanh() {
        do {
            let value: Double = 1.5
            let angle: Radian = try Trigonometry.acoth(value)
            XCTAssert(angle == Radian(rawValue: 0.804718956217050))
        } catch {
            XCTFail()
        }
    }

    func testAcotanhFloat() {
        do {
            let value: Float = 1.5
            let angle: Radian = try Trigonometry.acoth(value)
            XCTAssert(angle == Radian(rawValue: 0.804718956217050))
        } catch {
            XCTFail()
        }
    }

    func testAcotanhCGFloat() {
        do {
            let value: CGFloat = 1.5
            let angle: Radian = try Trigonometry.acoth(value)
            XCTAssert(angle == Radian(rawValue: 0.804718956217050))
        } catch {
            XCTFail()
        }
    }

    func testAcotanhThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acoth(value)
            XCTFail()
        } catch {
        }
    }

    func testAsech() {
        do {
            let value: Double = 0.25
            let angle: Radian = try Trigonometry.asech(value)
            XCTAssert(angle == Radian(rawValue: 2.063437068895560))
        } catch {
            XCTFail()
        }
    }

    func testAsechFloat() {
        do {
            let value: Float = 0.25
            let angle: Radian = try Trigonometry.asech(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: 2.063437068895560))
        } catch {
            XCTFail()
        }
    }

    func testAsechCGFloat() {
        do {
            let value: CGFloat = 0.25
            let angle: Radian = try Trigonometry.asech(value)
            XCTAssert(angle == Radian(rawValue: 2.063437068895560))
        } catch {
            XCTFail()
        }
    }

    func testAsechThrowing() {
        do {
            let value: Double = -1.0
            let _: Radian = try Trigonometry.asech(value)
            XCTFail()
        } catch {
        }
    }

    func testAcsch() {
        do {
            let value: Double = 0.850918128239321
            let angle: Radian = try Trigonometry.acsch(value)
            XCTAssert(angle.rawValue.equals(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testAcschFloat() {
        do {
            let value: Float = 0.850918128239321
            let angle: Radian = try Trigonometry.acsch(value)
            let rawAngle = Float(angle.rawValue)
            XCTAssert(rawAngle.equals(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testAcschCGFloat() {
        do {
            let value: CGFloat = 0.850918128239321
            let angle: Radian = try Trigonometry.acsch(value)
            XCTAssert(angle.rawValue.equals(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testAcschThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acsch(value)
            XCTFail()
        } catch {
        }
    }
}
