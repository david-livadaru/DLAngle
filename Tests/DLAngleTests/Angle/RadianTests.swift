//
//  RadianTests.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngle

class RadianTests: XCTestCase {
    static var allTests = [
        ("testConvenienceInitWithRawDegrees", testConvenienceInitWithRawDegrees),
        ("testConvenienceInitWithRawFloatDegrees", testConvenienceInitWithRawFloatDegrees),
        ("testConvenienceInitWithRawCGFloatDegrees", testConvenienceInitWithRawCGFloatDegrees),
        ("testConvenienceInitWithRadianAngle", testConvenienceInitWithRadianAngle),
        ("testAdditionOperation", testAdditionOperation),
        ("testAdditionEqualOperation", testAdditionEqualOperation),
        ("testSubtractOperation", testSubtractOperation),
        ("testSubtractEqualOperation", testSubtractEqualOperation),
        ("testMultiplicationOperation", testMultiplicationOperation),
        ("testMultiplicationOperationWithFloat", testMultiplicationOperationWithFloat),
        ("testMultiplicationOperationWithCGFloat", testMultiplicationOperationWithCGFloat),
        ("testValueMultipliedWithAngleOperation", testValueMultipliedWithAngleOperation),
        ("testFloatValueMultipliedWithAngleOperation", testFloatValueMultipliedWithAngleOperation),
        ("testCGFloatValueMultipliedWithAngleOperation", testCGFloatValueMultipliedWithAngleOperation),
        ("testMultiplicationEqualOperation", testMultiplicationEqualOperation),
        ("testMultiplicationEqualOperationWithFloat", testMultiplicationEqualOperationWithFloat),
        ("testMultiplicationEqualOperationWithCGFloat", testMultiplicationEqualOperationWithCGFloat),
        ("testDivideOperation", testDivideOperation),
        ("testDivideOperationWithFloat", testDivideOperationWithFloat),
        ("testDivideOperationWithCGFloat", testDivideOperationWithCGFloat),
        ("testDivideEqualOperation", testDivideEqualOperation),
        ("testDivideEqualOperationWithFloat", testDivideEqualOperationWithFloat),
        ("testDivideEqualOperationWithCGFloat", testDivideEqualOperationWithCGFloat),
        ("testValueDivideRadian", testValueDivideRadian),
        ("testFloatValueDivideRadian", testFloatValueDivideRadian),
        ("testCGFloatValueDivideRadian", testCGFloatValueDivideRadian),
        ("testNormalization", testNormalization),
        ("testSecondNormalization", testSecondNormalization),
        ("testNormalizationForNegativeAngle", testNormalizationForNegativeAngle),
        ("testNormalized", testNormalized),
        ("testComparison", testComparison),
        ("testMinusOperator", testMinusOperator)
    ]

    func testConvenienceInitWithRawDegrees() {
        let radianAngle = Radian(degrees: 90.0)
        XCTAssert(radianAngle.rawValue == Double.pi / 2.0)
    }

    func testConvenienceInitWithRawFloatDegrees() {
        let rawValue: Float = 45.0
        let radianAngle = Radian(degrees: rawValue)
        XCTAssert(radianAngle.rawValue == Double.pi / 4.0)
    }

    func testConvenienceInitWithRawCGFloatDegrees() {
        let rawValue: CGFloat = 135.0
        let radianAngle = Radian(degrees: rawValue)
        XCTAssert(radianAngle.rawValue == Double.pi * 3.0 / 4.0)
    }

    func testConvenienceInitWithRadianAngle() {
        let degreeAngle = Degree(rawValue: 45.0)
        let radianAngle = Radian(degree: degreeAngle)
        XCTAssert(radianAngle.rawValue == Double.pi / 4.0)
    }

    func testAdditionOperation() {
        let firstAngle = Radian(rawValue: Double.pi / 4.0)
        let secondAngle = Radian(rawValue: Double.pi / 4.0)
        let resultAngle = firstAngle + secondAngle
        XCTAssert(resultAngle.rawValue == Double.pi / 2.0)
    }

    func testAdditionEqualOperation() {
        var firstAngle = Radian(rawValue: Double.pi / 6.0)
        let secondAngle = Radian(rawValue: Double.pi / 12.0)
        firstAngle += secondAngle
        XCTAssert(firstAngle.rawValue == Double.pi / 4.0)
    }

    func testSubtractOperation() {
        let firstAngle = Radian(rawValue: 3.0 * Double.pi / 4.0)
        let secondAngle = Radian(rawValue: Double.pi / 4.0)
        let resultAngle = firstAngle - secondAngle
        XCTAssert(resultAngle.rawValue == Double.pi / 2.0)
    }

    func testSubtractEqualOperation() {
        var firstAngle = Radian(rawValue: 2.0 * Double.pi)
        let secondAngle = Radian(rawValue: Double.pi / 2.0)
        firstAngle -= secondAngle
        XCTAssert(firstAngle.rawValue == 3.0 * Double.pi / 2.0)
    }

    func testMultiplicationOperation() {
        let angle = Radian(rawValue: Double.pi / 2)
        let resultAngle = angle * 2.0
        XCTAssert(resultAngle.rawValue == Double.pi)
    }

    func testMultiplicationOperationWithFloat() {
        let angle = Radian(rawValue: Double.pi / 4)
        let ratio: Float = 4.0
        let resultAngle = angle * ratio
        XCTAssert(resultAngle.rawValue == Double.pi)
    }

    func testMultiplicationOperationWithCGFloat() {
        let angle = Radian(rawValue: Double.pi / 2)
        let ratio: CGFloat = 4.0
        let resultAngle = angle * ratio
        XCTAssert(resultAngle.rawValue == 2 * Double.pi)
    }

    func testValueMultipliedWithAngleOperation() {
        let angle = Radian(float: Float.pi / 6.0)
        let resultAngle = 2.0 * angle
        XCTAssert(resultAngle.float == Float.pi / 3.0)
    }

    func testFloatValueMultipliedWithAngleOperation() {
        let angle = Radian(float: Float.pi / 6.0)
        let ratio: Float = 2.0
        let resultAngle = ratio * angle
        XCTAssert(resultAngle.float == Float.pi / 3.0)
    }

    func testCGFloatValueMultipliedWithAngleOperation() {
        let angle = Radian(float: Float.pi / 6.0)
        let ratio: CGFloat = 2.0
        let resultAngle = ratio * angle
        XCTAssert(resultAngle.float == Float.pi / 3.0)
    }

    func testMultiplicationEqualOperation() {
        var angle = Radian(float: 3.0 * Float.pi / 4.0)
        angle *= 2.0
        XCTAssert(angle.float == 3.0 * Float.pi / 2.0)
    }

    func testMultiplicationEqualOperationWithFloat() {
        var angle = Radian(float: 3.0 * Float.pi / 4.0)
        let ratio: Float = 2.0
        angle *= ratio
        XCTAssert(angle.float == 3.0 * Float.pi / 2.0)
    }

    func testMultiplicationEqualOperationWithCGFloat() {
        var angle = Radian(float: 3.0 * Float.pi / 4.0)
        let ratio: CGFloat = 2.0
        angle *= ratio
        XCTAssert(angle.float == 3.0 * Float.pi / 2.0)
    }

    func testDivideOperation() {
        let angle = Radian(cgFloat: CGFloat.pi)
        let resultAngle = angle / 7.0
        XCTAssert(resultAngle.cgFloat == CGFloat.pi / 7.0)
    }

    func testDivideOperationWithFloat() {
        let angle = Radian(cgFloat: CGFloat.pi)
        let ratio: Float = 7.0
        let resultAngle = angle / ratio
        XCTAssert(resultAngle.cgFloat == CGFloat.pi / 7.0)
    }

    func testDivideOperationWithCGFloat() {
        let angle = Radian(cgFloat: CGFloat.pi)
        let ratio: CGFloat = 7.0
        let resultAngle = angle / ratio
        XCTAssert(resultAngle.cgFloat == CGFloat.pi / 7.0)
    }

    func testDivideEqualOperation() {
        var angle = Radian(cgFloat: CGFloat.pi)
        angle /= 4.0
        XCTAssert(angle.cgFloat == CGFloat.pi / 4.0)
    }

    func testDivideEqualOperationWithFloat() {
        var angle = Radian(cgFloat: CGFloat.pi)
        let ratio: Float = 4.0
        angle /= ratio
        XCTAssert(angle.cgFloat == CGFloat.pi / 4.0)
    }

    func testDivideEqualOperationWithCGFloat() {
        var angle = Radian(cgFloat: CGFloat.pi)
        let ratio: CGFloat = 4.0
        angle /= ratio
        XCTAssert(angle.cgFloat == CGFloat.pi / 4.0)
    }

    func testValueDivideRadian() {
        var angle = Radian(rawValue: Double.pi)
        angle = 1.0 / angle
        XCTAssert(angle.rawValue == M_1_PI)
    }

    func testFloatValueDivideRadian() {
        var angle = Radian(rawValue: Double.pi)
        let value: Float = 2.0
        angle = value / angle
        XCTAssert(angle.rawValue == M_2_PI)
    }

    func testCGFloatValueDivideRadian() {
        var angle = Radian(rawValue: sqrt(Double.pi))
        let value: CGFloat = 2.0
        angle = value / angle
        XCTAssert(angle.rawValue == M_2_SQRTPI)
    }

    func testNormalization() {
        let angle = Radian(rawValue: 2 * Double.pi)
        angle.normalize()
        XCTAssert(angle == Radian(rawValue: 0.0))
    }

    func testSecondNormalization() {
        let angle = Radian(rawValue: 5 * Double.pi / 2)
        angle.normalize()
        XCTAssert(angle == Radian(rawValue: Double.pi / 2))
    }

    func testNormalizationForNegativeAngle() {
        let angle = Radian(rawValue: -Double.pi)
        angle.normalize()
        XCTAssert(angle.rawValue == Double.pi)
    }

    func testNormalized() {
        let angle = Radian(rawValue: 4 * Double.pi)
        let normalizedAngle = angle.normalized()
        XCTAssert(normalizedAngle == Radian())
    }

    func testComparison() {
        let first = Radian(rawValue: Double.pi)
        let second = Radian(rawValue: 2 * Double.pi)
        XCTAssert(first < second)
    }

    func testMinusOperator() {
        let angle = Radian(rawValue: Double.pi / 2)
        let symetricAngle = -angle
        XCTAssertEqual(angle.rawValue, -symetricAngle.rawValue)
    }
}
