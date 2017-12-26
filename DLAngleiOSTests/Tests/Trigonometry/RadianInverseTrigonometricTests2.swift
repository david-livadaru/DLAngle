//
//  RadianInverseTrigonometricTests2.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class RadianInverseTrigonometricTests2: XCTestCase {
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
}
