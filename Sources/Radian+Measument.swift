//
//  Radian+Measument.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation

extension Radian {
    /// Create a Radian angle from a Measurement object.
    ///
    /// - Parameter measurement: The Measurement which will be converted into Radian angle.
    convenience init(measurement: Measurement<UnitAngle>) {
        let radiansMeasurement = measurement.converted(to: .radians)
        self.init(rawValue: radiansMeasurement.value)
    }

    /// Convert Radian angle into Measurement object.
    var measurement: Measurement<UnitAngle> {
        return Measurement<UnitAngle>(value: rawValue, unit: .radians)
    }
}
