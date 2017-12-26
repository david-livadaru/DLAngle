//
//  DegreeMeasurementTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class DegreeMeasurementTests: XCTestCase {
    func testConvenienceConstructor() {
        let measurement = Measurement<UnitAngle>(value: Double.pi / 2, unit: .radians)
        let angle = Degree(measurement: measurement)
        XCTAssert(angle.rawValue.equals(to: 90.0, precision: 0))
    }

    func testMeasurementProperty() {
        let angle = Degree(rawValue: 360.0)
        var measurement = angle.measurement
        measurement.convert(to: .radians)
        XCTAssert(measurement.value.equals(to: 2 * Double.pi, precision: 5))
    }
}
