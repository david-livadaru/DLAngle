//
//  RadianHyperbolicTrigonometricTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class RadianHyperbolicTrigonometricTests: XCTestCase {
    func testSinh() {
        let angle = Radian(rawValue: Double.pi / 6)
        let value: Double = angle.sinh()
        XCTAssert(value.equals(to: 0.547853473888039))
    }

    func testSinhFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        let value: Float = angle.sinh()
        XCTAssert(value.equals(to: 0.868670961486009))
    }

    func testSinhCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        let value: CGFloat = angle.sinh()
        XCTAssert(value.equals(to: 1.249367050523975))
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
        XCTAssert(value.equals(to: 1.140238321076428))
    }

    func testCoshFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        let value: Float = angle.cosh()
        XCTAssert(value.equals(to: 1.324609089252005))
    }

    func testCoshCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        let value: CGFloat = angle.cosh()
        XCTAssert(value.equals(to: 1.600286857702386))
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
        XCTAssert(value.equals(to: 0.480472778156451))
    }

    func testTanhFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        let value: Float = angle.tanh()
        XCTAssert(value.equals(to: 0.655794202632672))
    }

    func testTanhCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        let value: CGFloat = angle.tanh()
        XCTAssert(value.equals(to: 0.780714435359267))
    }

    func testTanhMinusInfinity() {
        let angle = Radian(rawValue: -Double.infinity)
        let value: Double = angle.tanh()
        XCTAssert(value.equals(to: -1.0))
    }

    func testTanhInfinity() {
        let angle = Radian(rawValue: Double.infinity)
        let value: Double = angle.tanh()
        XCTAssert(value.equals(to: 1.0))
    }

    func testCoth() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: Double = try angle.coth()
            XCTAssert(value.equals(to: 2.081283363933637))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .coth))
        }
    }

    func testCothFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.coth()
            XCTAssert(value.equals(to: 1.524868618822064))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .coth))
        }
    }

    func testCothCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.coth()
            XCTAssert(value.equals(to: 1.280878071045044))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .coth))
        }
    }

    func testCothThrowing() {
        let angle = Radian(rawValue: 0.0)
        do {
            let _: Double = try angle.coth()
            XCTFail(throwFailedMessage(for: .coth))
        } catch {
        }
    }

    func testCothMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let value: Double = try angle.coth()
            XCTAssert(value.equals(to: -1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .coth))
        }
    }

    func testCothInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let value: Double = try angle.coth()
            XCTAssert(value.equals(to: 1.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .coth))
        }
    }

    func testSech() {
        let angle = Radian(rawValue: 0.0)
        let value: Double = angle.sech()
        XCTAssert(value.equals(to: 1.0))
    }

    func testSechFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        let value: Float = angle.sech()
        XCTAssert(value.equals(to: 0.754939708714131))
    }

    func testSechCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        let value: CGFloat = angle.sech()
        XCTAssert(value.equals(to: 0.624887966296087))
    }

    func testSechMinusInfinity() {
        let angle = Radian(rawValue: -Double.infinity)
        let value: Double = angle.sech()
        XCTAssert(value.equals(to: 0.0))
    }

    func testSechInfinity() {
        let angle = Radian(rawValue: Double.infinity)
        let value: Double = angle.sech()
        XCTAssert(value.equals(to: 0.0))
    }

    func testCsch() {
        let angle = Radian(rawValue: Double.pi / 6)
        do {
            let value: Double = try angle.csch()
            XCTAssert(value.equals(to: 1.825305574687953))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csch))
        }
    }

    func testCschFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        do {
            let value: Float = try angle.csch()
            XCTAssert(value.equals(to: 1.151183870920848))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csch))
        }
    }

    func testCschCGFloat() {
        let angle = Radian(rawValue: Double.pi / 3)
        do {
            let value: CGFloat = try angle.csch()
            XCTAssert(value.equals(to: 0.800405292888593))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csch))
        }
    }

    func testCschThrowing() {
        let angle = Radian(rawValue: 0.0)
        do {
            let _: Double = try angle.csch()
            XCTFail(throwFailedMessage(for: .csch))
        } catch {
        }
    }

    func testCschMinusInfinity() {
        do {
            let angle = Radian(rawValue: -Double.infinity)
            let value: Double = try angle.csch()
            XCTAssert(value.equals(to: 0.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csch))
        }
    }

    func testCschInfinity() {
        do {
            let angle = Radian(rawValue: Double.infinity)
            let value: Double = try angle.csch()
            XCTAssert(value.equals(to: 0.0))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .csch))
        }
    }
}
