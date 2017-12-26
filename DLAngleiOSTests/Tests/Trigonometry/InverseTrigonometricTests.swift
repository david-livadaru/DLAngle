//
//  InverseTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class InverseTrigonometricTests: XCTestCase {
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
}
