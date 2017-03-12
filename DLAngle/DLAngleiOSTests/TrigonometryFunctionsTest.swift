//
//  TrigonometryFunctionsTest.swift
//  DLAngle
//
//  Created by David Livadaru on 18/02/2017.
//
//

import XCTest
@testable import DLAngleiOS

extension Float80 {
    func isEqual(to other: Float80) -> Bool {
        let diff = self - other
        return diff < Float80(pow(10.0, Double(Angle.equalityPrecision)))
    }
}

class TrigonometryFunctionsTest: XCTestCase {
    func testSineAsinFunction() {
        let angle = Radian(degrees: 45.0)
        let value: Float80 = Trigonometry.sin(angle)
        do {
            let otherAngle: Radian = try Trigonometry.asin(value)
            
            XCTAssert(angle == otherAngle, failMessage(testing: .sin, and: .asin))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .sin, and: .asin))
        }
    }
    
    func testRadianSineAsinFunction() {
        do {
            let angle = try Radian(asin: 0.5)
            let sinValue: Float80 = angle.sin()
            
            XCTAssert(sinValue.isEqual(to: 0.5), failMessage(testing: .sin, and: .asin))
        } catch {
            XCTFail("Failed due to error: \(error.localizedDescription)")
        }
    }
    
    func testCosineAcosinFunction() {
        let angle = Radian(degrees: 45.0)
        let value: Float80 = Trigonometry.cos(angle)
        do {
            let otherAngle: Radian = try Trigonometry.acos(value)
            
            XCTAssert(angle == otherAngle, failMessage(testing: .cos, and: .acos))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .cos, and: .acos))
        }
    }
    
    func testRadianCosAcosFunction() {
        do {
            let angle = try Radian(acos: 0.75)
            let cosValue: Float80 = angle.cos()
            
            XCTAssert(cosValue.isEqual(to: 0.75), failMessage(testing: .cos, and: .acos))
        } catch {
            XCTFail("Failed due to error: \(error.localizedDescription)")
        }
    }
    
    func testTanAtanFunction() {
        let angle = Radian(degrees: 70.0)
        do {
            let value: Float80 = try Trigonometry.tan(angle)
            let otherAngle: Radian = Trigonometry.atan(value)
            
            XCTAssert(angle == otherAngle, failMessage(testing: .tan, and: .atan))
        } catch {
            XCTFail(failMessage(forCatched: error, testing: .tan, and: .atan))
        }
    }
    
    func testRadianTanAtanFunction() {
        do {
            let angle = Radian(atan: 1.0)
            let tanValue: Float80 = try angle.tan()
            
            XCTAssert(tanValue.isEqual(to: 1.0), failMessage(testing: .sin, and: .asin))
        } catch {
            XCTFail("Failed due to error: \(error.localizedDescription)")
        }
    }
    
    func testCotAcotFunction() {
//        let angle = Radian(degrees: 20.0)
//        do {
//            let value: Float80 = try Trigonometry.cot(angle)
//            let otherAngle: Radian = Trigonometry.acot(value)
//            
//            XCTAssert(angle == otherAngle, failMessage(testing: .tan, and: .atan))
//        } catch {
//            XCTFail(failMessage(forCatched: error, testing: .tan, and: .atan))
//        }
    }
    
    func testRadianTanAtanFunction() {
//        do {
//            let angle = Radian(atan: 1.0)
//            let tanValue: Float80 = try angle.tan()
//            
//            XCTAssert(tanValue.isEqual(to: 1.0), failMessage(testing: .sin, and: .asin))
//        } catch {
//            XCTFail("Failed due to error: \(error.localizedDescription)")
//        }
    }
    
    // MARK: Fail messages
    
    private func failMessage(testing inverseFunction: TrigonometricArgumentsChecker.TrigonometricFunction,
                             and function: TrigonometricArgumentsChecker.TrigonometricFunction) -> String {
        return "\(function.rawValue.capitalized) or \(inverseFunction) function is not computed correctly."
    }
    
    private func failMessage(forCatched error: Error,
                             testing inverseFunction: TrigonometricArgumentsChecker.TrigonometricFunction,
                             and function: TrigonometricArgumentsChecker.TrigonometricFunction) -> String {
        return "Failed to compute \(function) or \(inverseFunction) due to error: \(error.localizedDescription)"
    }
}
