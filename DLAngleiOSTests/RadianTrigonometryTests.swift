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

    func testAcotMinusInfinity() {
        do {
            _ = try Radian(acot: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testAcotInfinity() {
        do {
            _ = try Radian(acot: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
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

    func testAsecMinusInfinity() {
        do {
            _ = try Radian(asec: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testAsecInfinity() {
        do {
            _ = try Radian(asec: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testAcsc() {
        do {
            let angle = try Radian(acsc: 1.0)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcscFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acsc: value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail()
        }
    }

    func testAcscCGFloat() {
        do {
            let value: CGFloat = 2.0
            let angle = try Radian(acsc: value)
            XCTAssert(angle.rawValue == Double.pi / 6)
        } catch {
            XCTFail()
        }
    }

    func testAcscFailing() {
        do {
            _ = try Radian(acsc: 0.5)
            XCTFail()
        } catch {
        }
    }

    func testAcscMinusInfinity() {
        do {
            _ = try Radian(acsc: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testAcscInfinity() {
        do {
            _ = try Radian(acsc: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
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

    func testAcothMinusInfinity() {
        do {
            _ = try Radian(acoth: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testAcothInfinity() {
        do {
            _ = try Radian(acoth: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
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

    func testAsechMinusInfinity() {
        do {
            _ = try Radian(asech: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testAsechInfinity() {
        do {
            _ = try Radian(asech: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testAcsch() {
        do {
            let csch_1 = 0.881373587019543
            let angle = try Radian(acsch: 1.0)
            XCTAssert(angle == Radian(rawValue: csch_1))
        } catch {
            XCTFail()
        }
    }

    func testAcschFloat() {
        do {
            let csch_2 = 0.481211825059603
            let value: Float = 2.0
            let angle = try Radian(acsch: value)
            Radian.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: csch_2))
        } catch {
            XCTFail()
        }
    }

    func testAcschCGFloat() {
        do {
            let csch_minus_1 = -0.881373587019543
            let value: CGFloat = -1.0
            let angle = try Radian(acsch: value)
            Radian.equalityPrecision = 14
            XCTAssert(angle == Radian(rawValue: csch_minus_1))
        } catch {
            XCTFail()
        }
    }

    func testAcschFailing() {
        do {
            _ = try Radian(acsch: 0.0)
            XCTFail()
        } catch  {
        }
    }

    func testAcschMinusInfinity() {
        do {
            _ = try Radian(acsch: -Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testAcschInfinity() {
        do {
            _ = try Radian(acsch: Double.infinity)
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail()
        }
    }

    func testSin() {
        do {
            let angle = Radian(rawValue: 0.0)
            let value: Double = try angle.sin()
            XCTAssert(value.isEqual(to: 0.0))
        } catch {
            XCTFail()
        }
    }

    func testSinFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 2)
            let value: Double = try angle.sin()
            XCTAssert(value.isEqual(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testSinCGFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 6)
            let value: Double = try angle.sin()
            XCTAssert(value.isEqual(to: 0.5))
        } catch {
            XCTFail()
        }
    }

    func testSinMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.sin()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testSinInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.sin()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testCos() {
        let angle = Radian(rawValue: 0.0)
        XCTAssert(angle.cos() == 1.0)
    }

    func testCosFloat() {
        let angle = Radian(rawValue: Double.pi / 2)
        let value: Float = angle.cos()
        XCTAssert(value.isEqual(to: 0.0))
    }

    func testCosCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        let value: CGFloat = angle.cos()
        XCTAssert(value.isEqual(to: 0.5))
    }

    func testCosMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.cos()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testCosInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.cos()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testTan() {
        let angle = Radian(rawValue: 0.0)
        do {
            let value: Double = try angle.tan()
            XCTAssert(value.isEqual(to: 0.0))
        } catch {
            XCTFail()
        }
    }

    func testTanFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.tan()
            XCTAssert(value.isEqual(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testTanCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.tan()
            XCTAssert(value.isEqual(to: sqrt(3)))
        } catch {
            XCTFail()
        }
    }

    func testTanThrowing() {
        let angle = Radian(rawValue: Double.pi / 2)
        do {
            let _: Double = try angle.tan()
            XCTFail()
        } catch {
        }
    }

    func testTanMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.tan()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testTanInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.tan()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testCot() {
        let angle = Radian(rawValue: Double.pi / 2)
        do {
            let value: Double = try angle.cot()
            XCTAssert(value.isEqual(to: 0.0))
        } catch {
            XCTFail()
        }
    }

    func testCotFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.cot()
            XCTAssert(value.isEqual(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testCotCGFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: CGFloat = try angle.cot()
            XCTAssert(value.isEqual(to: sqrt(3)))
        } catch {
            XCTFail()
        }
    }

    func testCotThrowing() {
        let angle = Radian(rawValue: Double.pi)
        do {
            let _: Double = try angle.cot()
            XCTFail()
        } catch {
        }
    }

    func testCotThrowing2() {
        let angle = Radian(rawValue: 0.0)
        do {
            let _: Double = try angle.cot()
            XCTFail()
        } catch {
        }
    }

    func testCotMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.cot()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testCotInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.cot()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testSec() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: Double = try angle.sec()
            XCTAssert(value.isEqual(to: 2 / sqrt(3)))
        } catch {
            XCTFail()
        }
    }

    func testSecFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.sec()
            XCTAssert(value.isEqual(to: sqrt(2)))
        } catch {
            XCTFail()
        }
    }

    func testSecCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.sec()
            XCTAssert(value.isEqual(to: 2))
        } catch {
            XCTFail()
        }
    }

    func testSecThrowing() {
        let angle = Radian(rawValue: Double.pi / 2)
        do {
            let _: Double = try angle.sec()
            XCTFail()
        } catch {
        }
    }

    func testSecMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.sec()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testSecInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.sec()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testCsc() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: Double = try angle.csc()
            XCTAssert(value.isEqual(to: 2))
        } catch {
            XCTFail()
        }
    }

    func testCscFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.csc()
            XCTAssert(value.isEqual(to: sqrt(2)))
        } catch {
            XCTFail()
        }
    }

    func testCscCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.csc()
            XCTAssert(value.isEqual(to: 2 / sqrt(3)))
        } catch {
            XCTFail()
        }
    }

    func testCscThrowing() {
        let angle = Radian(rawValue: 0.0)
        do {
            let _: Double = try angle.csc()
            XCTFail()
        } catch {
        }
    }

    func testCscMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.csc()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testCscInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.csc()
            XCTFail()
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail()
        }
    }

    func testSinh() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: Double = angle.sinh()
        XCTAssert(value.isEqual(to: 0.547853473888039))
    }

    func testSinhFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: Float = angle.sinh()
        XCTAssert(value.isEqual(to: 0.868670961486009))
    }

    func testSinhCGFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: CGFloat = angle.sinh()
        XCTAssert(value.isEqual(to: 1.249367050523975))
    }

    func testSinhMinusInfinity() {
        let angle = Radian(rawValue: -Double.infinity)
        let value: Double = angle.sinh()
        XCTAssert(value == -Double.infinity)
    }

    func testSinhInfinity() {
        let angle = Radian(rawValue: Double.infinity)
        let value: Double = angle.sinh()
        XCTAssert(value == Double.infinity)
    }

    func testCosh() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: Double = angle.cosh()
        XCTAssert(value.isEqual(to: 1.140238321076428))
    }

    func testCoshFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: Float = angle.cosh()
        XCTAssert(value.isEqual(to: 1.324609089252005))
    }

    func testCoshCGFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: CGFloat = angle.cosh()
        XCTAssert(value.isEqual(to: 1.600286857702386))
    }

    func testCoshMinusInfinity() {
        let angle = Radian(rawValue: -Double.infinity)
        let value: Double = angle.cosh()
        XCTAssert(value == Double.infinity)
    }

    func testCoshInfinity() {
        let angle = Radian(rawValue: Double.infinity)
        let value: Double = angle.cosh()
        XCTAssert(value == -Double.infinity)
    }

    func testTanh() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: Double = angle.tanh()
        XCTAssert(value.isEqual(to: 0.480472778156451))
    }

    func testTanhFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: Float = angle.tanh()
        XCTAssert(value.isEqual(to: 0.655794202632672))
    }

    func testTanhCGFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: CGFloat = angle.tanh()
        XCTAssert(value.isEqual(to: 0.780714435359267))
    }

    func testTanhMinusInfinity() {
        let angle = Radian(rawValue: -Double.infinity)
        let value: Double = angle.tanh()
        XCTAssert(value.isEqual(to: -1.0))
    }

    func testTanhInfinity() {
        let angle = Radian(rawValue: Double.infinity)
        let value: Double = angle.tanh()
        XCTAssert(value.isEqual(to: -1.0))
    }

    func testCoth() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: Double = try angle.coth()
            XCTAssert(value.isEqual(to: 2.081283363933637))
        } catch {
            XCTFail()
        }
    }

    func testCothFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.coth()
            XCTAssert(value.isEqual(to: 1.524868618822064))
        } catch {
            XCTFail()
        }
    }

    func testCothCGFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: CGFloat = try angle.coth()
            XCTAssert(value.isEqual(to: 1.280878071045044))
        } catch {
            XCTFail()
        }
    }

    func testCothThrowing() {
        let angle = Radian(rawValue: 0.0)
        do {
            let _: Double = try angle.coth()
            XCTFail()
        } catch {
        }
    }

    func testCothMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let value: Double = try angle.coth()
            XCTAssert(value.isEqual(to: -1.0))
        } catch {
            XCTFail()
        }
    }

    func testCothInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let value: Double = try angle.coth()
            XCTAssert(value.isEqual(to: -1.0))
        } catch {
            XCTFail()
        }
    }

    func testSech() {
        let angle = Radian(rawValue: 0.0)
        let value: Double = angle.sech()
        XCTAssert(value.isEqual(to: 1.0))
    }

    func testSechFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        let value: Float = angle.sech()
        XCTAssert(value.isEqual(to: 0.754939708714131))
    }

    func testSechCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        let value: CGFloat = angle.sech()
        XCTAssert(value.isEqual(to: 0.624887966296087))
    }

    func testSechMinusInfinity() {
        let angle = Radian(rawValue: -Double.infinity)
        let value: Double = angle.sech()
        XCTAssert(value.isEqual(to: 0.0))
    }

    func testSechInfinity() {
        let angle = Radian(rawValue: Double.infinity)
        let value: Double = angle.sech()
        XCTAssert(value.isEqual(to: 0.0))
    }

    func testCsch() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: Double = try angle.csch()
            XCTAssert(value.isEqual(to: 1.825305574687953))
        } catch {
            XCTFail()
        }
    }

    func testCschFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.csch()
            XCTAssert(value.isEqual(to: 1.151183870920848))
        } catch {
            XCTFail()
        }
    }

    func testCschCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.csch()
            XCTAssert(value.isEqual(to: 0.800405292888593))
        } catch {
            XCTFail()
        }
    }

    func testCschThrowing() {
        let angle = Radian(rawValue: 0.0)
        do {
            let _: Double = try angle.csch()
            XCTFail()
        } catch {
        }
    }

    func testCschMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let value: Double = try angle.csch()
            XCTAssert(value.isEqual(to: 0.0))
        } catch {
            XCTFail()
        }
    }

    func testCschInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let value: Double = try angle.csch()
            XCTAssert(value.isEqual(to: 0.0))
        } catch {
            XCTFail()
        }
    }
}
