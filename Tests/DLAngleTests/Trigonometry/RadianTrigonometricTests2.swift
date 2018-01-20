//
//  RadianTrigonometricTests2.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

class RadianTrigonometricTests2: XCTestCase {
    static var allTests = [
        ("testCot", testCot),
        ("testCotFloat", testCotFloat),
        ("testCotCGFloat", testCotCGFloat),
        ("testCotThrowing", testCotThrowing),
        ("testCotThrowing2", testCotThrowing2),
        ("testCotMinusInfinity", testCotMinusInfinity),
        ("testCotInfinity", testCotInfinity),
        ("testSec", testSec),
        ("testSecFloat", testSecFloat),
        ("testSecCGFloat", testSecCGFloat),
        ("testSecThrowing", testSecThrowing),
        ("testSecMinusInfinity", testSecMinusInfinity),
        ("testSecInfinity", testSecInfinity),
        ("testCsc", testCsc),
        ("testCscFloat", testCscFloat),
        ("testCscCGFloat", testCscCGFloat),
        ("testCscThrowing", testCscThrowing),
        ("testCscMinusInfinity", testCscMinusInfinity),
        ("testCscInfinity", testCscInfinity)
    ]

    func testCot() {
        let angle = Radian(rawValue: Double.pi / 2)
        do {
            let value: Double = try angle.cot()
            XCTAssert(value.equals(to: 0.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }

    func testCotFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.cot()
            XCTAssert(value.equals(to: 1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }

    func testCotCGFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: CGFloat = try angle.cot()
            XCTAssert(value.equals(to: sqrt(3)))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }

    func testCotThrowing() {
        let angle = Radian(rawValue: Double.pi)
        do {
            let _: Double = try angle.cot()
            XCTFail(throwFailedMessage(for: .cot))
        } catch {
        }
    }

    func testCotThrowing2() {
        let angle = Radian(rawValue: 0.0)
        do {
            let _: Double = try angle.cot()
            XCTFail(throwFailedMessage(for: .cot))
        } catch {
        }
    }

    func testCotMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.cot()
            XCTFail(throwFailedMessage(for: .cot))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }

    func testCotInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.cot()
            XCTFail(throwFailedMessage(for: .cot))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cot))
        }
    }

    func testSec() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: Double = try angle.sec()
            XCTAssert(value.equals(to: 2 / sqrt(3)))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }

    func testSecFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.sec()
            XCTAssert(value.equals(to: sqrt(2)))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }

    func testSecCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.sec()
            XCTAssert(value.equals(to: 2))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }

    func testSecThrowing() {
        let angle = Radian(rawValue: Double.pi / 2)
        do {
            let _: Double = try angle.sec()
            XCTFail(throwFailedMessage(for: .sec))
        } catch {
        }
    }

    func testSecMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.sec()
            XCTFail(throwFailedMessage(for: .sec))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }

    func testSecInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.sec()
            XCTFail(throwFailedMessage(for: .sec))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sec))
        }
    }

    func testCsc() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: Double = try angle.csc()
            XCTAssert(value.equals(to: 2))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        }
    }

    func testCscFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.csc()
            XCTAssert(value.equals(to: sqrt(2)))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        }
    }

    func testCscCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.csc()
            XCTAssert(value.equals(to: 2 / sqrt(3)))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        }
    }

    func testCscThrowing() {
        let angle = Radian(rawValue: 0.0)
        do {
            let _: Double = try angle.csc()
            XCTFail(throwFailedMessage(for: .csc))
        } catch {
        }
    }

    func testCscMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let _: Double = try angle.csc()
            XCTFail(throwFailedMessage(for: .csc))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        }
    }

    func testCscInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let _: Double = try angle.csc()
            XCTFail(throwFailedMessage(for: .csc))
        } catch let error as TrigonometricError {
            XCTAssert(error == .codomainValueNotComputable)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csc))
        }
    }
}
