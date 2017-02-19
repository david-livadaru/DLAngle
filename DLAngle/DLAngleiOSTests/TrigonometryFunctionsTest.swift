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
        let angle = Radian(degrees: 45.0)
        let value: Float80 = Trigonometry.sin(angle)
        let otherAngle: Radian = Trigonometry.asin(value)
        
        XCTAssert(angle == otherAngle, "Sin or asin function doesn't compute correctly")
    }

    // WARNING: continue from here
}
