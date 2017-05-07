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
    func testConvenienceInitWithRawRadiansValue() {
        let angleInRadians = Double.pi / 4.0
        let degreeAngle = Degree(radians: angleInRadians)
        XCTAssert(degreeAngle.rawValue == 45.0, "Degree's convenience init which accepts radians as raw value fails to convert the angle.")
    }
    
    func testConvenienceInitWithRadianAngle() {
        let radianAngle = Radian(rawValue: Double.pi / 2.0)
        let degreeAngle = Degree(radian: radianAngle)
        XCTAssert(degreeAngle.rawValue == 90.0, "Degree's conveniene init which accepts radian angle failes to convert the angle.")
    }
    
    func testPlusOperation() {
        let firstAngle = Degree(rawValue: 45.0)
        let secondAngle = Degree(rawValue: 15.0)
        let resultAngle = firstAngle + secondAngle
        XCTAssert(resultAngle.rawValue == 60.0, "Degree's '+' operator doesn't add values correctly.")
    }

    func testPlusEqualOperation() {
        var firstAngle = Degree(rawValue: 65.0)
        let secondAngle = Degree(rawValue: 25.0)
        firstAngle += secondAngle
        XCTAssert(firstAngle.rawValue == 90.0, "Degree's '+=' operator doesn't add values correctly.")
    }

    func testMinusOperation() {
        let firstAngle = Degree(rawValue: 180.0)
        let secondAngle = Degree(rawValue: 10.0)
        let resultAngle = firstAngle - secondAngle
        XCTAssert(resultAngle.rawValue == 170.0, "Degree's '-' operator doesn't subtracts values correctly.")
    }

    func testMinusEqualOperation() {
        var firstAngle = Degree(rawValue: 25.0)
        let secondAngle = Degree(rawValue: 15.0)
        firstAngle -= secondAngle
        XCTAssert(firstAngle.rawValue == 10.0, "Degree's '-=' operator doesn't subtracts values correctly.")
    }

    func testMultiplicationOperation() {
        let angle = Degree(rawValue: 50.0)
        let resultAngle = angle * 2.0
        XCTAssert(resultAngle.rawValue == 100.0, "Degree's '*' operator doesn't multiply values correctly.")
    }

    func testValueMultipliedWithAngleOperation() {
        let angle = Degree(rawValue: 20.0)
        let resultAngle = 2.0 * angle
        XCTAssert(resultAngle.rawValue == 40.0, "Degree's '*' operator doesn't multiply values correctly.")
    }

    func testMultiplicationEqualOperation() {
        var angle = Degree(rawValue: 60.0)
        angle *= 2.0
        XCTAssert(angle.rawValue == 120.0, "Degree's '*=' operator doesn't multiply values correctly.")
    }

    func testDivideOperation() {
        let angle = Degree(rawValue: 150.0)
        let resultAngle = angle / 5.0
        XCTAssert(resultAngle.rawValue == 30.0, "Degree's '/' operator doesn't devide values correctly.")
    }

    func testDivideEqualOperation() {
        var angle = Degree(rawValue: 100.0)
        angle /= 2.0
        XCTAssert(angle.rawValue == 50.0, "Degree's '/=' operator doesn't devide values correctly.")
    }
    
    func testNormalization() {
        let angle = Degree(rawValue: 720.0)
        angle.normalize()
        XCTAssert(angle.rawValue == 0.0, "Degree's does not normalize values correctly.")
    }
    
    func testSecondNormalization() {
        let angle = Degree(rawValue: 700.0)
        angle.normalize()
        XCTAssert(angle.rawValue == 340.0, "Degree's does not normalize values correctly.")
    }
    
    func testNormalizationForNegativeAngle() {
        let angle = Degree(rawValue: -90.0)
        angle.normalize()
        XCTAssert(angle.rawValue == 270.0, "Degree's does not normalize negative values correctly.")
    }
}
