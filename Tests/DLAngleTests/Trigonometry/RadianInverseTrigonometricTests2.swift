//
//  RadianInverseTrigonometricTests2.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

class RadianInverseTrigonometricTests2: XCTestCase {
    static var allTests = [
        ("testAcot", testAcot),
        ("testAcotFloat", testAcotFloat),
        ("testAcotCGFloat", testAcotCGFloat),
        ("testAcotFailing", testAcotFailing),
        ("testAcotMinusInfinity", testAcotMinusInfinity),
        ("testAcotInfinity", testAcotInfinity),
        ("testAsec", testAsec),
        ("testAsecFloat", testAsecFloat),
        ("testAsecCGFloat", testAsecCGFloat),
        ("testAsecFailing", testAsecFailing),
        ("testAsecMinusInfinity", testAsecMinusInfinity),
        ("testAsecInfinity", testAsecInfinity),
        ("testAcsc", testAcsc),
        ("testAcscFloat", testAcscFloat),
        ("testAcscCGFloat", testAcscCGFloat),
        ("testAcscFailing", testAcscFailing),
        ("testAcscMinusInfinity", testAcscMinusInfinity),
        ("testAcscInfinity", testAcscInfinity)
    ]

    func testAcot() {
        do {
            let angle = try Radian(acot: 1.0)
            XCTAssert(angle.rawValue == Double.pi / 4)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acot))
        }
    }

    func testAcotFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acot: value)
            XCTAssert(angle.rawValue == Double.pi / 4)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acot))
        }
    }

    func testAcotCGFloat() {
        do {
            let value: CGFloat = 1.0
            let angle = try Radian(acot: value)
            XCTAssert(angle.rawValue == Double.pi / 4)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acot))
        }
    }

    func testAcotFailing() {
        do {
            _ = try Radian(acot: 0.0)
            XCTFail(throwFailedMessage(for: .acot))
        } catch {
        }
    }

    func testAcotMinusInfinity() {
        do {
            _ = try Radian(acot: -Double.infinity)
            XCTFail(throwFailedMessage(for: .acot))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acot))
        }
    }

    func testAcotInfinity() {
        do {
            _ = try Radian(acot: Double.infinity)
            XCTFail(throwFailedMessage(for: .acot))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acot))
        }
    }

    func testAsec() {
        do {
            let angle = try Radian(asec: -1.0)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asec))
        }
    }

    func testAsecFloat() {
        do {
            let value: Float = -1.0
            let angle = try Radian(asec: value)
            XCTAssert(angle.rawValue == Double.pi)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asec))
        }
    }

    func testAsecCGFloat() {
        do {
            let value: CGFloat = 2.0
            let angle = try Radian(asec: value)
            XCTAssert(angle.rawValue == Double.pi / 3)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asec))
        }
    }

    func testAsecFailing() {
        do {
            _ = try Radian(asec: 0.5)
            XCTFail(throwFailedMessage(for: .asec))
        } catch {
        }
    }

    func testAsecMinusInfinity() {
        do {
            _ = try Radian(asec: -Double.infinity)
            XCTFail(throwFailedMessage(for: .asec))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asec))
        }
    }

    func testAsecInfinity() {
        do {
            _ = try Radian(asec: Double.infinity)
            XCTFail(throwFailedMessage(for: .asec))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asec))
        }
    }

    func testAcsc() {
        do {
            let angle = try Radian(acsc: 1.0)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsc))
        }
    }

    func testAcscFloat() {
        do {
            let value: Float = 1.0
            let angle = try Radian(acsc: value)
            XCTAssert(angle.rawValue == Double.pi / 2)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsc))
        }
    }

    func testAcscCGFloat() {
        do {
            let value: CGFloat = 2.0
            let angle = try Radian(acsc: value)
            XCTAssert(angle.rawValue == Double.pi / 6)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsc))
        }
    }

    func testAcscFailing() {
        do {
            _ = try Radian(acsc: 0.5)
            XCTFail(throwFailedMessage(for: .acsc))
        } catch {
        }
    }

    func testAcscMinusInfinity() {
        do {
            _ = try Radian(acsc: -Double.infinity)
            XCTFail(throwFailedMessage(for: .acsc))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsc))
        }
    }

    func testAcscInfinity() {
        do {
            _ = try Radian(acsc: Double.infinity)
            XCTFail(throwFailedMessage(for: .acsc))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsc))
        }
    }
}
