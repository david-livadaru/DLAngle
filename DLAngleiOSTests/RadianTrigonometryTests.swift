//
//  RadianTrigonometryTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/1/17.
//

import XCTest
@testable import DLAngle_iOS

private let sinh_PI: Double = 11.548739357257748
private let sinh_PI_2: Double = 2.301298902307294
private let sinh_PI_4: Double = 0.868670961486009

private let cosh_PI: Double = 11.591953275521520
private let cosh_PI_2: Double = 2.509178478658056
private let cosh_PI_4: Double = 1.324609089252005

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
        do {
            let angle = try Radian(acot: 1.0)
            XCTAssert(angle.rawValue == Double.pi / 4)
        } catch {
            XCTFail()
        }
    }

    func testAcotFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acot: value)
            XCTAssert(angle.rawValue == Double.pi / 4)
        } catch {
            XCTFail()
        }
    }

    func testAcotCGFloat() {
        do {
            let value: CGFloat = 1.0
            let angle = try Radian(acot: value)
            XCTAssert(angle.rawValue == Double.pi / 4)
        } catch {
            XCTFail()
        }
    }

    func testAcotFailing() {
        do {
            _ = try Radian(acot: 0.0)
            XCTFail()
        } catch {
        }
    }

    func testAsec() {
        do {
            let angle = try Radian(asec: -1.0)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail()
        }
    }

    func testAsecFloat() {
        do {
            let value: Float = -1.0
            let angle = try Radian(asec: value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail()
        }
    }

    func testAsecCGFloat() {
        do {
            let value: CGFloat = 2.0
            let angle = try Radian(asec: value)
            XCTAssert(angle.rawValue == Double.pi / 3)
        } catch {
            XCTFail()
        }
    }

    func testAsecFailing() {
        do {
            _ = try Radian(asec: 0.5)
            XCTFail()
        } catch {
        }
    }

    func testAcosec() {
        do {
            let angle = try Radian(acosec: 1.0)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcosecFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acosec: value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcosecCGFloat() {
        do {
            let value: CGFloat = 2.0
            let angle = try Radian(acosec: value)
            XCTAssert(angle.rawValue == Double.pi / 6)
        } catch {
            XCTFail()
        }
    }

    func testAcosecFailing() {
        do {
            _ = try Radian(acosec: 0.5)
            XCTFail()
        } catch {
        }
    }

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

    func testAcoth() {
        let cotanh_1_and_half = 0.804718956217050
        do {
            let angle = try Radian(acoth: 1.5)
            XCTAssert(angle == Radian(rawValue: cotanh_1_and_half))
        } catch {
            XCTFail()
        }
    }

    func testAcothFloat() {
        let cotanh_minus_5 = -0.202732554054082
        do {
            let value: Float = -5
            let angle = try Radian(acoth: value)
            Radian.equalityPrecision = 7
            XCTAssert(angle == Radian(rawValue: cotanh_minus_5))
        } catch {
            XCTFail()
        }
    }

    func testAcothCGFloat() {
        let atanh_2_and_half = 0.423648930193601
        do {
            let value: CGFloat = 2.5
            let angle = try Radian(acoth: value)
            Radian.equalityPrecision = 14
            XCTAssert(angle == Radian(rawValue: atanh_2_and_half))
        } catch {
            XCTFail()
        }
    }

    func testAcothFailing() {
        do {
            _ = try Radian(acoth: 0.5)
            XCTFail()
        } catch {
        }
    }

    func testAsech() {
        do {
            let sech_1_tenth = 2.993222846126380
            let angle = try Radian(asech: 0.1)
            XCTAssert(angle == Radian(rawValue: sech_1_tenth))
        } catch {
            XCTFail()
        }
    }

    func testAsechFloat() {
        do {
            let sech_half = 1.316957896924816
            let value: Float = 0.5
            let angle = try Radian(asech: value)
            Radian.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: sech_half))
        } catch {
            XCTFail()
        }
    }

    func testAsechCGFloat() {
        do {
            let sech_quarter = 2.063437068895560
            let value: CGFloat = 0.25
            let angle = try Radian(asech: value)
            Radian.equalityPrecision = 14
            XCTAssert(angle == Radian(rawValue: sech_quarter))
        } catch {
            XCTFail()
        }
    }

    func testAsechFailing() {
        do {
            _ = try Radian(asech: 2.0)
            XCTFail()
        } catch  {
        }
    }

    func testAcosech() {
        do {
            let cosech_1 = 0.881373587019543
            let angle = try Radian(acosech: 1.0)
            XCTAssert(angle == Radian(rawValue: cosech_1))
        } catch {
            XCTFail()
        }
    }

    func testAcosechFloat() {
        do {
            let cosech_2 = 0.481211825059603
            let value: Float = 2.0
            let angle = try Radian(acosech: value)
            Radian.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: cosech_2))
        } catch {
            XCTFail()
        }
    }

    func testAcosechCGFloat() {
        do {
            let cosech_minus_1 = -0.881373587019543
            let value: CGFloat = -1.0
            let angle = try Radian(acosech: value)
            Radian.equalityPrecision = 14
            XCTAssert(angle == Radian(rawValue: cosech_minus_1))
        } catch {
            XCTFail()
        }
    }

    func testAcosechFailing() {
        do {
            _ = try Radian(acosech: 0.0)
            XCTFail()
        } catch  {
        }
    }

    func testSin() {
        let angle = Radian(rawValue: 0.0)
        XCTAssert(angle.sin() == 0.0)
    }

    func testSinFloat() {
        let angle = Radian(rawValue: Double.pi / 2)
        let value: Float = angle.sin()
        XCTAssert(value == 1.0)
    }

    func testSinCGFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: CGFloat = angle.sin()
        XCTAssert(value.isEqual(to: 0.5))
    }
}
