//
//  RadianTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class RadianTrigonometricTests: XCTestCase {
    func testSin() {
        do {
            let angle = Radian(rawValue: 0.0)
            let value: Double = try angle.sin()
            XCTAssert(value.equals(to: 0.0))
        } catch {
            XCTFail()
        }
    }

    func testSinFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 2)
            let value: Double = try angle.sin()
            XCTAssert(value.equals(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testSinCGFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 6)
            let value: Double = try angle.sin()
            XCTAssert(value.equals(to: 0.5))
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
        do {
            let angle = Radian(rawValue: 0.0)
            let cosValue: Double = try angle.cos()
            XCTAssert(cosValue.equals(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testCosFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 2)
            let cosValue: Float = try angle.cos()
            XCTAssert(cosValue.equals(to: 0.0))
        } catch {
            XCTFail()
        }
    }

    func testCosCGFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 3)
            let cosValue: CGFloat = try angle.cos()
            XCTAssert(cosValue.equals(to: 0.5))
        } catch {
            XCTFail()
        }
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
            XCTAssert(value.equals(to: 0.0))
        } catch {
            XCTFail()
        }
    }

    func testTanFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.tan()
            XCTAssert(value.equals(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testTanCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.tan()
            XCTAssert(value.equals(to: sqrt(3)))
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
}
