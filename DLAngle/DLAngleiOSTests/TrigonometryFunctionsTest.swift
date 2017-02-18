//
//  TrigonometryFunctionsTest.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngleiOS

class TrigonometryFunctionsTest: XCTestCase {
    func testSineAsineFunction() {
        let angle = Radian<Double>(degrees: 45)
        let otherAngle = Trigonometry.asin(Trigonometry.sin(angle))
        
        XCTAssert(angle == otherAngle, "Sin or asin function doesn't compute correctly")
    }
    
    func testSineFunction2() {
        // WARNING: continue from here
    }
}
