//
//  AngleTests.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngleiOS

class AngleTests: XCTestCase {
    func testConstructor() {
        let ninety: Float = 90.0
        let angle = Angle<Float>(rawValue: ninety)
        XCTAssert(angle.rawValue == ninety, "Angle constructor is not setting rawValue property.")
    }
    
    // WARNING: First add more tests here for equality and comparison
}
