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
        do {
            let otherAngle: Radian = try Trigonometry.asin(value)
            
            XCTAssert(angle == otherAngle, "Sin or asin function doesn't compute correctly")
        } catch {
            XCTFail("Failed due to error: \(error.localizedDescription)")
        }
    }

    // WARNING: continue from here
}
