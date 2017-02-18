//
//  DegreeTests.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngleiOS

class DegreeTests: XCTestCase {
    func testConvenienceInitWithRawRadiansValue() {
        let angleInRadians = Double.pi / 4
        let degreeAngle = Degree<Double>(radians: angleInRadians)
        XCTAssert(degreeAngle.rawValue == 45.0, "Degree's convenience init which accepts radians as raw value fails to convert the angle.")
    }
    
    func testConvenienceInitWithRadianAngle() {
        let radianAngle = Radian<Double>(rawValue: Double.pi / 2)
        let degreeAngle = Degree<Double>(radian: radianAngle)
        XCTAssert(degreeAngle.rawValue == 90.0, "Degree's conveniene init which accepts radian angle failes to convert the angle.")
    }
    
    func testPlusOperation() {
        let firstAngle = Degree<Double>(rawValue: 45)
        let secondAngle = Degree<Double>(rawValue: 15)
        let resultAngle = firstAngle + secondAngle
        XCTAssert(resultAngle.rawValue == 60.0, "Degree's '+' operator doesn't add values correctly.")
    }
    
    func testPlusEqualOperation() {
        var firstAngle = Degree<Double>(rawValue: 65.0)
        let secondAngle = Degree<Double>(rawValue: 25.0)
        firstAngle += secondAngle
        XCTAssert(firstAngle.rawValue == 90.0, "Degree's '+=' operator doesn't add values correctly.")
    }
    
    func testMinusOperation() {
        let firstAngle = Degree<Double>(rawValue: 180)
        let secondAngle = Degree<Double>(rawValue: 10)
        let resultAngle = firstAngle - secondAngle
        XCTAssert(resultAngle.rawValue == 170.0, "Degree's '-' operator doesn't subtracts values correctly.")
    }
    
    func testMinusEqualOperation() {
        var firstAngle = Degree<Double>(rawValue: 25)
        let secondAngle = Degree<Double>(rawValue: 15)
        firstAngle -= secondAngle
        XCTAssert(firstAngle.rawValue == 10.0, "Degree's '-=' operator doesn't subtracts values correctly.")
    }
    
    func testMultiplicationOperation() {
        let angle = Degree<Float>(rawValue: 50.0)
        let resultAngle = angle * 2
        XCTAssert(resultAngle.rawValue == 100.0, "Degree's '*' operator doesn't multiply values correctly.")
    }
    
    func testValueMultipliedWithAngleOperation() {
        let angle = Degree<Float>(rawValue: 20.0)
        let resultAngle = 2 * angle
        XCTAssert(resultAngle.rawValue == 40.0, "Degree's '*' operator doesn't multiply values correctly.")
    }
    
    func testMultiplicationEqualOperation() {
        var angle = Degree<Float>(rawValue: 60.0)
        angle *= 2
        XCTAssert(angle.rawValue == 120.0, "Degree's '*=' operator doesn't multiply values correctly.")
    }
    
    func testDivideOperation() {
        let angle = Degree<Float>(rawValue: 150)
        let resultAngle = angle / 5
        XCTAssert(resultAngle.rawValue == 30.0, "Degree's '/' operator doesn't devide values correctly.")
    }
    
    func testDivideEqualOperation() {
        var angle = Degree<Float>(rawValue: 100)
        angle /= 2
        XCTAssert(angle.rawValue == 50.0, "Degree's '/=' operator doesn't devide values correctly.")
    }
}
