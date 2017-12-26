//
//  Degree+Measurement.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation

extension Degree {
    convenience init(measurement: Measurement<UnitAngle>) {
        let degreesMeasurement = measurement.converted(to: .degrees)
        self.init(rawValue: degreesMeasurement.value)
    }

    var measurement: Measurement<UnitAngle> {
        return Measurement<UnitAngle>(value: rawValue, unit: .degrees)
    }
}
