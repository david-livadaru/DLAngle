//
//  RadianMeasurementTests.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import XCTest
@testable import DLAngle

class RadianMeasurementTests: XCTestCase {
    static var allTests = [
        ("testConvenienceConstructor", testConvenienceConstructor),
        ("testMeasurementProperty", testMeasurementProperty)
    ]

    func testConvenienceConstructor() {
        guard #available(iOS 10.0, macOS 10.12, watchOS 3.0, tvOS 10.0, *) else { return }

        let measurement = Measurement<UnitAngle>(value: 90.0, unit: .degrees)
        let angle = Radian(measurement: measurement)
        XCTAssert(angle.rawValue.equals(to: Double.pi / 2, precision: 6))
    }

    func testMeasurementProperty() {
        guard #available(iOS 10.0, macOS 10.12, watchOS 3.0, tvOS 10.0, *) else { return }

        let angle = Radian(rawValue: 2 * Double.pi)
        var measurement = angle.measurement
        measurement.convert(to: .degrees)
        XCTAssert(measurement.value.equals(to: 360.0, precision: 0))
    }
}
