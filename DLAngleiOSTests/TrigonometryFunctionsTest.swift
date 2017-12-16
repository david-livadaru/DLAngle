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
    func isEqual(to other: Double) -> Bool {
        let diff = self - other
        return abs(diff) < Double(pow(10.0, 15))
    }
}

extension CGFloat {
    func isEqual(to other: CGFloat) -> Bool {
        let diff = self - other
        return abs(diff) < CGFloat(pow(10.0, 15))
    }
}

extension Float {
    func isEqual(to other: Float) -> Bool {
        let diff = self - other
        return abs(diff) < Float(pow(10.0, 7))
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
        let value: Double = 1.0
        let angle: Radian = Trigonometry.atan(value)
        XCTAssert(angle == Radian(rawValue: Double.pi / 4))
    }

    func testAtanFloat() {
        let value: Float = 1.0
        let angle: Radian = Trigonometry.atan(value)
        Angle.equalityPrecision = 6
        XCTAssert(angle == Radian(rawValue: Double.pi / 4))
    }

    func testAtanCGFloat() {
        let value: CGFloat = 1.0
        let angle: Radian = Trigonometry.atan(value)
        XCTAssert(angle == Radian(rawValue: Double.pi / 4))
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


    func testAcosec() {
        do {
            let value: Double = 1.0
            let angle: Radian = try Trigonometry.acosec(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcosecFloat() {
        do {
            let value: Float = 1.0
            let angle: Radian = try Trigonometry.acosec(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcosecCGFloat() {
        do {
            let value: CGFloat = 1.0
            let angle: Radian = try Trigonometry.acosec(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcosecThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acosec(value)
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

    func testAcosech() {
        do {
            let value: Double = 0.881373587019543
            let angle: Radian = try Trigonometry.acosech(value)
            XCTAssert(angle.rawValue.isEqual(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testAcosechFloat() {
        do {
            let value: Float = 0.881373587019543
            let angle: Radian = try Trigonometry.acosech(value)
            XCTAssert(angle.rawValue.isEqual(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testAcosechCGFloat() {
        do {
            let value: CGFloat = 0.881373587019543
            let angle: Radian = try Trigonometry.acosech(value)
            XCTAssert(angle.rawValue.isEqual(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testAcosechThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acosech(value)
            XCTFail()
        } catch {
        }
    }
}
