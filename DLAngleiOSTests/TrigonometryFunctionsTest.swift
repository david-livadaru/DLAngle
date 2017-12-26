//
//  TrigonometryFunctionsTest.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngle_iOS

extension Double {
    func isEqual(with other: Double, precision: Double = -15.0) -> Bool {
        let diff = self - other
        let argument = max(precision, -15.0)
        return abs(diff) < Double(pow(10.0, argument))
    }
}

extension CGFloat {
    func isEqual(with other: CGFloat, precision: Double = -15.0) -> Bool {
        let diff = self - other
        let argument = Swift.max(Double(precision), -15.0)
        return abs(diff) < CGFloat(pow(10.0, argument))
    }
}

extension Float {
    func isEqual(with other: Float, precision: Double = -7.0) -> Bool {
        let diff = self - other
        let argument = max(precision, -7.0)
        return abs(diff) < Float(pow(10.0, argument))
    }
}

class TrigonometryFunctionsTest: XCTestCase {
    func testAsin() {
        do {
            let value: Double = -1.0
            let angle: Radian = try Trigonometry.asin(value)
            XCTAssert(angle == Radian(rawValue: -Double.pi / 2))
        } catch {
            XCTFail()
        }
    }

    func testAsinFloat() {
        do {
            let value: Float = -1.0
            let angle: Radian = try Trigonometry.asin(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: -Double.pi / 2))
        } catch {
            XCTFail()
        }
    }

    func testAsinCGFloat() {
        do {
            let value: CGFloat = -1.0
            let angle: Radian = try Trigonometry.asin(value)
            XCTAssert(angle == Radian(rawValue: -Double.pi / 2))
        } catch {
            XCTFail()
        }
    }

    func testAsinThrowing() {
        do {
            let value: Double = 2.0
            let _: Radian = try Trigonometry.asin(value)
            XCTFail()
        } catch {
        }
    }

    func testAcos() {
        do {
            let value: Double = -1.0
            let angle: Radian = try Trigonometry.acos(value)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail()
        }
    }

    func testAcosFloat() {
        do {
            let value: Float = -1.0
            let angle: Radian = try Trigonometry.acos(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail()
        }
    }

    func testAcosCGFloat() {
        do {
            let value: CGFloat = -1.0
            let angle: Radian = try Trigonometry.acos(value)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail()
        }
    }

    func testAcosThrowing() {
        do {
            let value: Double = 2.0
            let _: Radian = try Trigonometry.acos(value)
            XCTFail()
        } catch {
        }
    }

    func testAtan() {
        do {
            let value: Double = 1.0
            let angle: Radian = try Trigonometry.atan(value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail()
        }
    }

    func testAtanFloat() {
        do {
            let value: Float = 1.0
            let angle: Radian = try Trigonometry.atan(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {

        }
    }

    func testAtanCGFloat() {
        do {
            let value: CGFloat = 1.0
            let angle: Radian = try Trigonometry.atan(value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail()
        }
    }

    func testAtan2() {
        do {
            let xValue: Double = -1.0
            let yValue: Double = 0.0
            let angle: Radian = try Trigonometry.atan2(y: yValue, x: xValue)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail()
        }
    }

    func testAtan2Float() {
        do {
            let xValue: Float = -1.0
            let yValue: Float = 0.0
            let angle: Radian = try Trigonometry.atan2(y: yValue, x: xValue)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail()
        }
    }

    func testAtan2CGFloat() {
        do {
            let xValue: CGFloat = -1.0
            let yValue: CGFloat = 0.0
            let angle: Radian = try Trigonometry.atan2(y: yValue, x: xValue)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail()
        }
    }

    func testAtan2Throwing() {
        do {
            let xValue: Double = 0.0
            let yValue: Double = 0.0
            let _: Radian = try Trigonometry.atan2(y: yValue, x: xValue)
            XCTFail()
        } catch {
        }
    }

    func testAcot() {
        do {
            let value: Double = 1.0
            let angle: Radian = try Trigonometry.acot(value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail()
        }
    }

    func testAcotFloat() {
        do {
            let value: Float = 1.0
            let angle: Radian = try Trigonometry.acot(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail()
        }
    }

    func testAcotCGFloat() {
        do {
            let value: CGFloat = 1.0
            let angle: Radian = try Trigonometry.acot(value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail()
        }
    }

    func testAcotThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acot(value)
            XCTFail()
        } catch {
        }
    }

    func testAsec() {
        do {
            let value: Double = -1.0
            let angle: Radian = try Trigonometry.asec(value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail()
        }
    }

    func testAsecFloat() {
        do {
            let value: Float = -1.0
            let angle: Radian = try Trigonometry.asec(value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail()
        }
    }

    func testAsecCGFloat() {
        do {
            let value: CGFloat = -1.0
            let angle: Radian = try Trigonometry.asec(value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail()
        }
    }

    func testAsecThrowing() {
        do {
            let value = 0.0
            let _: Radian = try Trigonometry.asec(value)
            XCTFail()
        } catch {
        }
    }


    func testAcsc() {
        do {
            let value: Double = 1.0
            let angle: Radian = try Trigonometry.acsc(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcscFloat() {
        do {
            let value: Float = 1.0
            let angle: Radian = try Trigonometry.acsc(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcscCGFloat() {
        do {
            let value: CGFloat = 1.0
            let angle: Radian = try Trigonometry.acsc(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcscThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acsc(value)
            XCTFail()
        } catch {
        }
    }

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
            XCTAssert(angle.rawValue.isEqual(with: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testAcschFloat() {
        do {
            let value: Float = 0.850918128239321
            let angle: Radian = try Trigonometry.acsch(value)
            let rawAngle = Float(angle.rawValue)
            XCTAssert(rawAngle.isEqual(with: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testAcschCGFloat() {
        do {
            let value: CGFloat = 0.850918128239321
            let angle: Radian = try Trigonometry.acsch(value)
            XCTAssert(angle.rawValue.isEqual(with: 1.0))
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
