//
//  RadianMeasurementTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle_iOS

class RadianMeasurementTests: XCTestCase {
    func testConvenienceConstructor() {
        let measurement = Measurement<UnitAngle>(value: 90.0, unit: .degrees)
        let angle = Radian(measurement: measurement)
        XCTAssert(angle.rawValue.equals(to: Double.pi / 2, precision: 6))
    }

    func testMeasurementProperty() {
        let angle = Radian(rawValue: 2 * Double.pi)
        var measurement = angle.measurement
        measurement.convert(to: .degrees)
        XCTAssert(measurement.value.equals(to: 360.0, precision: 0))
    }
}
