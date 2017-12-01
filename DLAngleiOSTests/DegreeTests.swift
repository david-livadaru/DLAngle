//
//  DegreeTests.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngle_iOS

class DegreeTests: XCTestCase {
    func testConvenienceInitWithRawDoubleValue() {
        let degreeAngle = Degree(radians: Double.pi / 4.0)
        XCTAssert(degreeAngle.rawValue == 45.0)
    }

    func testConveniencenIntiWithRawFloatValue() {
        let degreeAngle = Degree(radians: Float.pi * 1.5)
        XCTAssert(round(degreeAngle.rawValue) == 270.0)
    }

    func testConveniencenIntiWithRawCGFloatValue() {
        let degreeAngle = Degree(radians: CGFloat.pi)
        XCTAssert(degreeAngle.rawValue == 180.0)
    }

    func testConvenienceInitWithRadianAngle() {
        let radianAngle = Radian(rawValue: Double.pi / 2.0)
        let degreeAngle = Degree(radian: radianAngle)
        XCTAssert(degreeAngle.rawValue == 90.0)
    }

    func testNormalization() {
        let angle = Degree(rawValue: 720.0)
        angle.normalize()
        XCTAssert(angle.rawValue == 0.0)
    }

    func testNormalization2() {
        let angle = Degree(rawValue: 700.0)
        angle.normalize()
        XCTAssert(angle.rawValue == 340.0)
    }

    func testNormalization3() {
        XCTAssert(Degree.normalizationValue == 360)
    }

    func testNormalization4() {
        let angle = Degree(rawValue: 405)
        angle.normalize()
        XCTAssert(angle.rawValue == 45)
    }

    func testNormalizeValueIsPositive() {
        let angle = Degree(rawValue: -90.0)
        angle.normalize()
        XCTAssert(angle.rawValue == 270.0)
    }

    func testNormalizeValueIsPositive2() {
        let angle = Degree(rawValue: -405)
        angle.normalize()
        XCTAssert(angle.rawValue == 315)
    }

    func testNormalized() {
        let angle = Degree(rawValue: 630)
        let newAngle = angle.normalized()
        XCTAssert(newAngle.rawValue == 270)
    }

    func testNormalizedValueIsPositive() {
        let angle = Degree(rawValue: -630)
        angle.normalize()
        XCTAssert(angle.rawValue == 90)
    }
    
    func testAdditionOperation() {
        let firstAngle = Degree(rawValue: 45.0)
        let secondAngle = Degree(rawValue: 15.0)
        let resultAngle = firstAngle + secondAngle
        XCTAssert(resultAngle.rawValue == 60.0)
    }

    func testAdditionEqualOperation() {
        var firstAngle = Degree(rawValue: 65.0)
        let secondAngle = Degree(rawValue: 25.0)
        firstAngle += secondAngle
        XCTAssert(firstAngle.rawValue == 90.0)
    }

    func testSubtractOperation() {
        let firstAngle = Degree(rawValue: 180.0)
        let secondAngle = Degree(rawValue: 10.0)
        let resultAngle = firstAngle - secondAngle
        XCTAssert(resultAngle.rawValue == 170.0)
    }

    func testSubtractEqualOperation() {
        var firstAngle = Degree(rawValue: 25.0)
        let secondAngle = Degree(rawValue: 15.0)
        firstAngle -= secondAngle
        XCTAssert(firstAngle.rawValue == 10.0)
    }

    func testMultiplicationOperation() {
        let angle = Degree(rawValue: 50.0)
        let resultAngle = angle * 2.0
        XCTAssert(resultAngle.rawValue == 100.0)
    }

    func testMultiplicationOperationWithFloat() {
        let angle = Degree(rawValue: 10.0)
        let ratio: Float = 10.0
        let resultAngle = angle * ratio
        XCTAssert(resultAngle.rawValue == 100.0)
    }

    func testMultiplicationOperationWithCGFloat() {
        let angle = Degree(rawValue: 25.0)
        let ratio: CGFloat = 4.0
        let resultAngle = angle * ratio
        XCTAssert(resultAngle.rawValue == 100.0)
    }

    func testValueMultipliedWithAngleOperation() {
        let angle = Degree(rawValue: 20.0)
        let resultAngle = 2.0 * angle
        XCTAssert(resultAngle.rawValue == 40.0)
    }

    func testValueMultiplicationOperationWithFloat() {
        let angle = Degree(rawValue: 180.0)
        let ratio: Float = 2.0
        let resultAngle = ratio * angle
        XCTAssert(resultAngle.rawValue == 360.0)
    }

    func testValueMultiplicationOperationWithCGFloat() {
        let angle = Degree(rawValue: 90.0)
        let ratio: CGFloat = 4.0
        let resultAngle = ratio * angle
        XCTAssert(resultAngle.rawValue == 360.0)
    }

    func testMultiplicationEqualOperation() {
        var angle = Degree(rawValue: 60.0)
        angle *= 2.0
        XCTAssert(angle.rawValue == 120.0)
    }

    func testMultiplicationEqualOperationWithFloat() {
        var angle = Degree(rawValue: 60.0)
        let ratio: Float = 3.0
        angle *= ratio
        XCTAssert(angle.rawValue == 180.0)
    }

    func testMultiplicationEqualOperationWithCGFloat() {
        var angle = Degree(rawValue: 45.0)
        let ratio: CGFloat = 4.0
        angle *= ratio
        XCTAssert(angle.rawValue == 180.0)
    }

    func testDivideOperation() {
        let angle = Degree(rawValue: 150.0)
        let resultAngle = angle / 5.0
        XCTAssert(resultAngle.rawValue == 30.0)
    }

    func testDivideOperationWithFloat() {
        let angle = Degree(rawValue: 150.0)
        let ratio: Float = 3.0
        let resultAngle = angle / ratio
        XCTAssert(resultAngle.rawValue == 50.0)
    }

    func testDivideOperationWithCGFloat() {
        let angle = Degree(rawValue: 200.0)
        let ratio: CGFloat = 5.0
        let resultAngle = angle / ratio
        XCTAssert(resultAngle.rawValue == 40.0)
    }

    func testDivideEqualOperation() {
        var angle = Degree(rawValue: 100.0)
        angle /= 2.0
        XCTAssert(angle.rawValue == 50.0)
    }

    func testDivideEqualOperationWithFloat() {
        var angle = Degree(rawValue: 180.0)
        let ratio: Float = 2.0
        angle /= ratio
        XCTAssert(angle.rawValue == 90.0)
    }

    func testDivideEqualOperationWithCGFloat() {
        var angle = Degree(rawValue: 180.0)
        let ratio: CGFloat = 4.0
        angle /= ratio
        XCTAssert(angle.rawValue == 45.0)
    }

    func testEquality() {
        let first = Degree(rawValue: 180)
        let second = Degree(radians: Double.pi)
        XCTAssert(first == second)
    }

    func testEquality2() {
        let first = Degree(rawValue: 270)
        let second = Degree(radians: 3 * Double.pi / 2)
        XCTAssert(first == second)
    }

    func testEquality3() {
        Degree.equalityPrecision = 0
        let first = Degree(rawValue: 5 * 180 / 7)
        let second = Degree(radians: 5 * Double.pi / 7)
        XCTAssert(first == second)
    }

    func testComparison() {
        let first = Degree(rawValue: 180.0)
        let second = Degree(radians: Double.pi / 2)
        XCTAssert(first > second)
    }
}
