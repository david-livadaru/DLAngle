//
//  AngleTests.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngle_iOS

class AngleTests: XCTestCase {
    func testConstructor1() {
        let rawValue: Double = 25.0
        let angle = Angle(rawValue: rawValue)
        XCTAssert(angle.rawValue == rawValue, "Angle constructor is not setting rawValue property properly.")
    }
    
    func testConstructor2() {
        let ninety: Float = 90.0
        let angle = Angle(float: ninety)
        XCTAssert(angle.float == ninety, "Angle constructor is not setting rawValue property properly.")
    }
    
    func testConstructor3() {
        let rawValue: Double = 25.0
        let angle = Angle(rawValue: rawValue)
        XCTAssert(angle.rawValue == rawValue, "Angle constructor is not setting rawValue property properly.")
    }
    
    func testConstructor4() {
        let rawValue: CGFloat = 120.0
        let angle = Angle(cgFloat: rawValue)
        XCTAssert(angle.cgFloat == rawValue, "Angle constructor is not setting rawValue property properly.")
    }
    
    // WARNING: First add more tests here for equality and comparison
}
