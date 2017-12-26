//
//  RadianTrigonometricTests2.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class RadianTrigonometricTests2: XCTestCase {
    func testCot() {
        let angle = Radian(rawValue: Double.pi / 2)
        do {
            let value: Double = try angle.cot()
            XCTAssert(value.equals(to: 0.0))
        } catch {
            XCTFail()
        }
    }

    func testCotFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.cot()
            XCTAssert(value.equals(to: 1.0))
        } catch {
            XCTFail()
        }
    }

    func testCotCGFloat() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: CGFloat = try angle.cot()
            XCTAssert(value.equals(to: sqrt(3)))
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
            XCTAssert(value.equals(to: 2 / sqrt(3)))
        } catch {
            XCTFail()
        }
    }

    func testSecFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.sec()
            XCTAssert(value.equals(to: sqrt(2)))
        } catch {
            XCTFail()
        }
    }

    func testSecCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.sec()
            XCTAssert(value.equals(to: 2))
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
            XCTAssert(value.equals(to: 2))
        } catch {
            XCTFail()
        }
    }

    func testCscFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.csc()
            XCTAssert(value.equals(to: sqrt(2)))
        } catch {
            XCTFail()
        }
    }

    func testCscCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.csc()
            XCTAssert(value.equals(to: 2 / sqrt(3)))
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
}
