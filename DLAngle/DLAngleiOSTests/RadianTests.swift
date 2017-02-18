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
        let radianAngle = Radian<Double>(degrees: 90.0)
        XCTAssert(radianAngle.rawValue == Double.pi / 2, "Radian's convenience init which accepts degrees as raw value fails to convert the angle.")
    }
    
    func testConvenienceInitWithRadianAngle() {
        let degreeAngle = Degree<Double>(rawValue: 45.0)
        let radianAngle = Radian<Double>(degree: degreeAngle)
        XCTAssert(radianAngle.rawValue == Double.pi / 4, "Radian's conveniene init which accepts degree angle failes to convert the angle.")
    }
    
    func testPlusOperation() {
        let firstAngle = Radian<Double>(rawValue: Double.pi / 4)
        let secondAngle = Radian<Double>(rawValue: Double.pi / 4)
        let resultAngle = firstAngle + secondAngle
        XCTAssert(resultAngle.rawValue == Double.pi / 2, "Radian's '+' operator doesn't add values correctly.")
    }
    
    func testPlusEqualOperation() {
        var firstAngle = Radian<Double>(rawValue: Double.pi / 6)
        let secondAngle = Radian<Double>(rawValue: Double.pi / 12)
        firstAngle += secondAngle
        XCTAssert(firstAngle.rawValue == Double.pi / 4, "Radian's '+=' operator doesn't add values correctly.")
    }
    
    func testMinusOperation() {
        let firstAngle = Radian<Double>(rawValue: 3 * Double.pi / 4)
        let secondAngle = Radian<Double>(rawValue: Double.pi / 4)
        let resultAngle = firstAngle - secondAngle
        XCTAssert(resultAngle.rawValue == Double.pi / 2, "Radian's '-' operator doesn't subtracts values correctly.")
    }
    
    func testMinusEqualOperation() {
        var firstAngle = Radian<Double>(rawValue: 2 * Double.pi)
        let secondAngle = Radian<Double>(rawValue: Double.pi / 2)
        firstAngle -= secondAngle
        XCTAssert(firstAngle.rawValue == 3 * Double.pi / 2, "Radian's '-=' operator doesn't subtracts values correctly.")
    }
    
    func testMultiplicationOperation() {
        let angle = Radian<Double>(rawValue: Double.pi / 2)
        let resultAngle = angle * 2
        XCTAssert(resultAngle.rawValue == Double.pi, "Radian's '*' operator doesn't multiply values correctly.")
    }
    
    func testValueMultipliedWithAngleOperation() {
        let angle = Radian<Float>(rawValue: Float.pi / 6)
        let resultAngle = 2 * angle
        XCTAssert(resultAngle.rawValue == Float.pi / 3, "Radian's '*' operator doesn't multiply values correctly.")
    }
    
    func testMultiplicationEqualOperation() {
        var angle = Radian<Float>(rawValue: 3 * Float.pi / 4)
        angle *= 2
        XCTAssert(angle.rawValue == 3 * Float.pi / 2, "Radian's '*=' operator doesn't multiply values correctly.")
    }
    
    func testDivideOperation() {
        let angle = Radian<Float>(rawValue: Float.pi)
        let resultAngle = angle / 7
        XCTAssert(resultAngle.rawValue == Float.pi / 7, "Radian's '/' operator doesn't devide values correctly.")
    }
    
    func testValueDevideAngleOperation() {
        let angle = Radian<Double>(rawValue: Double.pi)
        let resultAngle = 1 / angle
        XCTAssert(resultAngle.rawValue == M_1_PI, "Radian's '/' operator doesn't devide value to angle correctly.")
    }
    
    func testValueDevideAngleOperation2() {
        let angle = Radian<Double>(rawValue: Double.pi)
        let resultAngle = 2 / angle
        XCTAssert(resultAngle.rawValue == M_2_PI, "Radian's '/' operator doesn't devide value to angle correctly.")
    }
    
    func testDivideEqualOperation() {
        var angle = Radian<Float>(rawValue: Float.pi)
        angle /= 4
        XCTAssert(angle.rawValue == Float.pi / 4, "Degree's '/=' operator doesn't devide values correctly.")
    }
}
