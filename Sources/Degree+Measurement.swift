//
//  Degree+Measurement.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation

extension Degree {
    /// Create a Degree angle from a Measurement object.
    ///
    /// - Parameter measurement: The Measurement which will be converted into Degree angle.
    convenience init(measurement: Measurement<UnitAngle>) {
        let degreesMeasurement = measurement.converted(to: .degrees)
        self.init(rawValue: degreesMeasurement.value)
    }

    /// Convert Degree angle into Measurement object.
    var measurement: Measurement<UnitAngle> {
        return Measurement<UnitAngle>(value: rawValue, unit: .degrees)
    }
}
