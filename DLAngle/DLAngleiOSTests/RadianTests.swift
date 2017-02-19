//
//  RadianTests.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngleiOS

class RadianTests: XCTestCase {
    func testConvenienceInitWithRawDegrees() {
        let radianAngle = Radian(degrees: 90.0)
        XCTAssert(radianAngle.rawValue == Float80.pi / 2.0, "Radian's convenience init which accepts degrees as raw value fails to convert the angle.")
    }
    
    func testConvenienceInitWithRadianAngle() {
        let degreeAngle = Degree(rawValue: 45.0)
        let radianAngle = Radian(degree: degreeAngle)
        XCTAssert(radianAngle.rawValue == Float80.pi / 4.0, "Radian's conveniene init which accepts degree angle failes to convert the angle.")
    }
    
    func testPlusOperation() {
        let firstAngle = Radian(double: Double.pi / 4.0)
        let secondAngle = Radian(double: Double.pi / 4.0)
        let resultAngle = firstAngle + secondAngle
        XCTAssert(resultAngle.rawValue == Float80.pi / 2.0, "Radian's '+' operator doesn't add values correctly.")
    }

    func testPlusEqualOperation() {
        var firstAngle = Radian(double: Double.pi / 6.0)
        let secondAngle = Radian(double: Double.pi / 12.0)
        firstAngle += secondAngle
        XCTAssert(firstAngle.double == Double.pi / 4.0, "Radian's '+=' operator doesn't add values correctly.")
    }

    func testMinusOperation() {
        let firstAngle = Radian(double: 3.0 * Double.pi / 4.0)
        let secondAngle = Radian(double: Double.pi / 4.0)
        let resultAngle = firstAngle - secondAngle
        XCTAssert(resultAngle.double == Double.pi / 2.0, "Radian's '-' operator doesn't subtracts values correctly.")
    }
    
    func testMinusEqualOperation() {
        var firstAngle = Radian(double: 2.0 * Double.pi)
        let secondAngle = Radian(double: Double.pi / 2.0)
        firstAngle -= secondAngle
        XCTAssert(firstAngle.double == 3.0 * Double.pi / 2.0, "Radian's '-=' operator doesn't subtracts values correctly.")
    }
    
    func testMultiplicationOperation() {
        let angle = Radian(double: Double.pi / 2)
        let resultAngle = angle * 2.0
        XCTAssert(resultAngle.double == Double.pi, "Radian's '*' operator doesn't multiply values correctly.")
    }
    
    func testValueMultipliedWithAngleOperation() {
        let angle = Radian(float: Float.pi / 6.0)
        let resultAngle = 2.0 * angle
        XCTAssert(resultAngle.float == Float.pi / 3.0, "Radian's '*' operator doesn't multiply values correctly.")
    }
    
    func testMultiplicationEqualOperation() {
        var angle = Radian(float: 3.0 * Float.pi / 4.0)
        angle *= 2.0
        XCTAssert(angle.float == 3.0 * Float.pi / 2.0, "Radian's '*=' operator doesn't multiply values correctly.")
    }
    
    func testDivideOperation() {
        let angle = Radian(cgFloat: CGFloat.pi)
        let resultAngle = angle / 7.0
        XCTAssert(resultAngle.cgFloat == CGFloat.pi / 7.0, "Radian's '/' operator doesn't devide values correctly.")
    }
    
    func testValueDevideAngleOperation() {
        let angle = Radian(double: Double.pi)
        let resultAngle = 1.0 / angle
        XCTAssert(resultAngle.double == M_1_PI, "Radian's '/' operator doesn't devide value to angle correctly.")
    }

    func testValueDevideAngleOperation2() {
        let angle = Radian(double: Double.pi)
        let resultAngle = 2.0 / angle
        XCTAssert(resultAngle.double == M_2_PI, "Radian's '/' operator doesn't devide value to angle correctly.")
    }
    
    func testDivideEqualOperation() {
        var angle = Radian(cgFloat: CGFloat.pi)
        angle /= 4.0
        XCTAssert(angle.cgFloat == CGFloat.pi / 4.0, "Degree's '/=' operator doesn't devide values correctly.")
    }
}
