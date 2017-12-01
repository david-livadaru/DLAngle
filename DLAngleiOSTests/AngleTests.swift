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
    func testRawValueConstructor() {
        let rawValue: Double = 25.0
        let angle = Angle(rawValue: rawValue)
        XCTAssert(angle.rawValue == rawValue)
    }
    
    func testFloatConstructor() {
        let ninety: Float = 90.0
        let angle = Angle(float: ninety)
        XCTAssert(angle.float == ninety)
    }
    
    func testDoubleConstructor() {
        let rawValue: Double = 25.0
        let angle = Angle(rawValue: rawValue)
        XCTAssert(angle.rawValue == rawValue)
    }
    
    func testCGFloatConstructor4() {
        let rawValue: CGFloat = 120.0
        let angle = Angle(cgFloat: rawValue)
        XCTAssert(angle.cgFloat == rawValue)
    }
}
