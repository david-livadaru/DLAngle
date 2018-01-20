//
//  InverseTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

// swiftlint:disable:next type_body_length
class InverseTrigonometricTests: XCTestCase {
    static var allTests = [
        ("testAsin", testAsin),
        ("testAsinFloat", testAsinFloat),
        ("testAsinCGFloat", testAsinCGFloat),
        ("testAsinThrowing", testAsinThrowing),
        ("testAcos", testAcos),
        ("testAcosFloat", testAcosFloat),
        ("testAcosCGFloat", testAcosCGFloat),
        ("testAcosThrowing", testAcosThrowing),
        ("testAtan", testAtan),
        ("testAtanFloat", testAtanFloat),
        ("testAtanCGFloat", testAtanCGFloat),
        ("testAtan2", testAtan2),
        ("testAtan2Float", testAtan2Float),
        ("testAtan2CGFloat", testAtan2CGFloat),
        ("testAtan2Throwing", testAtan2Throwing),
        ("testAcot", testAcot),
        ("testAcotFloat", testAcotFloat),
        ("testAcotCGFloat", testAcotCGFloat),
        ("testAcotThrowing", testAcotThrowing),
        ("testAsec", testAsec),
        ("testAsecFloat", testAsecFloat),
        ("testAsecCGFloat", testAsecCGFloat),
        ("testAsecThrowing", testAsecThrowing),
        ("testAcsc", testAcsc),
        ("testAcscFloat", testAcscFloat),
        ("testAcscCGFloat", testAcscCGFloat),
        ("testAcscThrowing", testAcscThrowing)
    ]

    func testAsin() {
        do {
            let value: Double = -1.0
            let angle: Radian = try Trigonometry.asin(value)
            XCTAssert(angle == Radian(rawValue: -Double.pi / 2))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }

    func testAsinFloat() {
        do {
            let value: Float = -1.0
            let angle: Radian = try Trigonometry.asin(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: -Double.pi / 2))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }

    func testAsinCGFloat() {
        do {
            let value: CGFloat = -1.0
            let angle: Radian = try Trigonometry.asin(value)
            XCTAssert(angle == Radian(rawValue: -Double.pi / 2))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asin))
        }
    }

    func testAsinThrowing() {
        do {
            let value: Double = 2.0
            let _: Radian = try Trigonometry.asin(value)
            XCTFail(throwFailedMessage(for: .asin))
        } catch {
        }
    }

    func testAcos() {
        do {
            let value: Double = -1.0
            let angle: Radian = try Trigonometry.acos(value)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }

    func testAcosFloat() {
        do {
            let value: Float = -1.0
            let angle: Radian = try Trigonometry.acos(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }

    func testAcosCGFloat() {
        do {
            let value: CGFloat = -1.0
            let angle: Radian = try Trigonometry.acos(value)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acos))
        }
    }

    func testAcosThrowing() {
        do {
            let value: Double = 2.0
            let _: Radian = try Trigonometry.acos(value)
            XCTFail(throwFailedMessage(for: .acos))
        } catch {
        }
    }

    func testAtan() {
        do {
            let value: Double = 1.0
            let angle: Radian = try Trigonometry.atan(value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan))
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
            XCTFail(failMessage(forCatched: error, testing: .atan))
        }
    }

    func testAtan2() {
        do {
            let xValue: Double = -1.0
            let yValue: Double = 0.0
            let angle: Radian = try Trigonometry.atan2(y: yValue, x: xValue)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
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
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtan2CGFloat() {
        do {
            let xValue: CGFloat = -1.0
            let yValue: CGFloat = 0.0
            let angle: Radian = try Trigonometry.atan2(y: yValue, x: xValue)
            XCTAssert(angle == Radian(rawValue: Double.pi))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .atan2))
        }
    }

    func testAtan2Throwing() {
        do {
            let xValue: Double = 0.0
            let yValue: Double = 0.0
            let _: Radian = try Trigonometry.atan2(y: yValue, x: xValue)
            XCTFail(throwFailedMessage(for: .atan2))
        } catch {
        }
    }

    func testAcot() {
        do {
            let value: Double = 1.0
            let angle: Radian = try Trigonometry.acot(value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acot))
        }
    }

    func testAcotFloat() {
        do {
            let value: Float = 1.0
            let angle: Radian = try Trigonometry.acot(value)
            Angle.equalityPrecision = 6
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acot))
        }
    }

    func testAcotCGFloat() {
        do {
            let value: CGFloat = 1.0
            let angle: Radian = try Trigonometry.acot(value)
            XCTAssert(angle == Radian(rawValue: Double.pi / 4))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acot))
        }
    }

    func testAcotThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acot(value)
            XCTFail(throwFailedMessage(for: .acot))
        } catch {
        }
    }

    func testAsec() {
        do {
            let value: Double = -1.0
            let angle: Radian = try Trigonometry.asec(value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asec))
        }
    }

    func testAsecFloat() {
        do {
            let value: Float = -1.0
            let angle: Radian = try Trigonometry.asec(value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asec))
        }
    }

    func testAsecCGFloat() {
        do {
            let value: CGFloat = -1.0
            let angle: Radian = try Trigonometry.asec(value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asec))
        }
    }

    func testAsecThrowing() {
        do {
            let value = 0.0
            let _: Radian = try Trigonometry.asec(value)
            XCTFail(throwFailedMessage(for: .asec))
        } catch {
        }
    }

    func testAcsc() {
        do {
            let value: Double = 1.0
            let angle: Radian = try Trigonometry.acsc(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsc))
        }
    }

    func testAcscFloat() {
        do {
            let value: Float = 1.0
            let angle: Radian = try Trigonometry.acsc(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsc))
        }
    }

    func testAcscCGFloat() {
        do {
            let value: CGFloat = 1.0
            let angle: Radian = try Trigonometry.acsc(value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsc))
        }
    }

    func testAcscThrowing() {
        do {
            let value: Double = 0.0
            let _: Radian = try Trigonometry.acsc(value)
            XCTFail(throwFailedMessage(for: .acsc))
        } catch {
        }
    }
}
