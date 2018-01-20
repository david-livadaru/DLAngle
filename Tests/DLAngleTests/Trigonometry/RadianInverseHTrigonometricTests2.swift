//
//  RadianInverseHTrigonometricTests2.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

class RadianInverseHTrigonometricTests2: XCTestCase {
    static var allTests = [
        ("testAcoth", testAcoth),
        ("testAcothFloat", testAcothFloat),
        ("testAcothCGFloat", testAcothCGFloat),
        ("testAcothFailing", testAcothFailing),
        ("testAcothMinusInfinity", testAcothMinusInfinity),
        ("testAcothInfinity", testAcothInfinity),
        ("testAsech", testAsech),
        ("testAsechFloat", testAsechFloat),
        ("testAsechCGFloat", testAsechCGFloat),
        ("testAsechFailing", testAsechFailing),
        ("testAsechMinusInfinity", testAsechMinusInfinity),
        ("testAsechInfinity", testAsechInfinity),
        ("testAcsch", testAcsch),
        ("testAcschFloat", testAcschFloat),
        ("testAcschCGFloat", testAcschCGFloat),
        ("testAcschFailing", testAcschFailing),
        ("testAcschMinusInfinity", testAcschMinusInfinity),
        ("testAcschInfinity", testAcschInfinity)
    ]

    func testAcoth() {
        let cotanh_1_and_half = 0.804718956217050
        do {
            let angle = try Radian(acoth: 1.5)
            XCTAssert(angle == Radian(rawValue: cotanh_1_and_half))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acoth))
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
            XCTFail(failMessage(forCatched: error, testing: .acoth))
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
            XCTFail(failMessage(forCatched: error, testing: .acoth))
        }
    }

    func testAcothFailing() {
        do {
            _ = try Radian(acoth: 0.5)
            XCTFail(throwFailedMessage(for: .acoth))
        } catch {
        }
    }

    func testAcothMinusInfinity() {
        do {
            _ = try Radian(acoth: -Double.infinity)
            XCTFail(throwFailedMessage(for: .acoth))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acoth))
        }
    }

    func testAcothInfinity() {
        do {
            _ = try Radian(acoth: Double.infinity)
            XCTFail(throwFailedMessage(for: .acoth))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acoth))
        }
    }

    func testAsech() {
        do {
            let sech_1_tenth = 2.993222846126380
            let angle = try Radian(asech: 0.1)
            XCTAssert(angle == Radian(rawValue: sech_1_tenth))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asech))
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
            XCTFail(failMessage(forCatched: error, testing: .asech))
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
            XCTFail(failMessage(forCatched: error, testing: .asech))
        }
    }

    func testAsechFailing() {
        do {
            _ = try Radian(asech: 2.0)
            XCTFail(throwFailedMessage(for: .asech))
        } catch {
        }
    }

    func testAsechMinusInfinity() {
        do {
            _ = try Radian(asech: -Double.infinity)
            XCTFail(throwFailedMessage(for: .asech))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asech))
        }
    }

    func testAsechInfinity() {
        do {
            _ = try Radian(asech: Double.infinity)
            XCTFail(throwFailedMessage(for: .asech))
        } catch let error as TrigonometricError {
            XCTAssert(error == .invalidParameter)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .asech))
        }
    }

    func testAcsch() {
        do {
            let csch_1 = 0.881373587019543
            let angle = try Radian(acsch: 1.0)
            XCTAssert(angle == Radian(rawValue: csch_1))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsch))
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
            XCTFail(failMessage(forCatched: error, testing: .acsch))
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
            XCTFail(failMessage(forCatched: error, testing: .acsch))
        }
    }

    func testAcschFailing() {
        do {
            _ = try Radian(acsch: 0.0)
            XCTFail(throwFailedMessage(for: .acsch))
        } catch {
        }
    }

    func testAcschMinusInfinity() {
        do {
            _ = try Radian(acsch: -Double.infinity)
            XCTFail(throwFailedMessage(for: .acsch))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsch))
        }
    }

    func testAcschInfinity() {
        do {
            _ = try Radian(acsch: Double.infinity)
            XCTFail(throwFailedMessage(for: .acsch))
        } catch let error as TrigonometricError {
            XCTAssert(error == .undefinedCodomainValue)
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .acsch))
        }
    }
}
