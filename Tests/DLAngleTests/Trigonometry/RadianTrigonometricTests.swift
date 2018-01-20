//
//  RadianTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

class RadianTrigonometricTests: XCTestCase {
    static var allTests = [
        ("testSin", testSin),
        ("testSinFloat", testSinFloat),
        ("testSinCGFloat", testSinCGFloat),
        ("testSinMinusInfinity", testSinMinusInfinity),
        ("testSinInfinity", testSinInfinity),
        ("testCos", testCos),
        ("testCosFloat", testCosFloat),
        ("testCosCGFloat", testCosCGFloat),
        ("testCosMinusInfinity", testCosMinusInfinity),
        ("testCosInfinity", testCosInfinity),
        ("testTan", testTan),
        ("testTanFloat", testTanFloat),
        ("testTanCGFloat", testTanCGFloat),
        ("testTanThrowing", testTanThrowing),
        ("testTanMinusInfinity", testTanMinusInfinity),
        ("testTanInfinity", testTanInfinity)
    ]

    func testSin() {
        do {
            let angle = Radian(rawValue: 0.0)
            let value: Double = try angle.sin()
            XCTAssert(value.equals(to: 0.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sin))
        }
    }

    func testSinFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 2)
            let value: Float = try angle.sin()
            XCTAssert(value.equals(to: 1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sin))
        }
    }

    func testSinCGFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 6)
            let value: CGFloat = try angle.sin()
            XCTAssert(value.equals(to: 0.5))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sin))
        }
    }

    func testSinMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.sin()
            XCTFail(throwFailedMessage(for: .sin))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sin))
        }
    }

    func testSinInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.sin()
            XCTFail(throwFailedMessage(for: .sin))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sin))
        }
    }

    func testCos() {
        do {
            let angle = Radian(rawValue: 0.0)
            let cosValue: Double = try angle.cos()
            XCTAssert(cosValue.equals(to: 1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cos))
        }
    }

    func testCosFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 2)
            let cosValue: Float = try angle.cos()
            XCTAssert(cosValue.equals(to: 0.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cos))
        }
    }

    func testCosCGFloat() {
        do {
            let angle = Radian(rawValue: Double.pi / 3)
            let cosValue: CGFloat = try angle.cos()
            XCTAssert(cosValue.equals(to: 0.5))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cos))
        }
    }

    func testCosMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.cos()
            XCTFail(throwFailedMessage(for: .cos))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cos))
        }
    }

    func testCosInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.cos()
            XCTFail(throwFailedMessage(for: .cos))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cos))
        }
    }

    func testTan() {
        let angle = Radian(rawValue: 0.0)
        do {
            let value: Double = try angle.tan()
            XCTAssert(value.equals(to: 0.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }

    func testTanFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.tan()
            XCTAssert(value.equals(to: 1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }

    func testTanCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.tan()
            XCTAssert(value.equals(to: sqrt(3)))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }

    func testTanThrowing() {
        let angle = Radian(rawValue: Double.pi / 2)
        do {
            let _: Double = try angle.tan()
            XCTFail(throwFailedMessage(for: .tan))
        } catch {
        }
    }

    func testTanMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.tan()
            XCTFail(throwFailedMessage(for: .tan))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }

    func testTanInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.tan()
            XCTFail(throwFailedMessage(for: .tan))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan))
        }
    }
}
