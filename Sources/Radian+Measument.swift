//
//  Radian+Measument.swift
//  DLAngle
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation

extension Radian {
    convenience init(measurement: Measurement<UnitAngle>) {
        let radiansMeasurement = measurement.converted(to: .radians)
        self.init(rawValue: radiansMeasurement.value)
    }

    var measurement: Measurement<UnitAngle> {
        return Measurement<UnitAngle>(value: rawValue, unit: .radians)
    }
}
