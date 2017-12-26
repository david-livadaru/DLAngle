//
//  Double+FrameworkExtension.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation

extension Double {
    func equals(to other: Double, precision: Double = -15.0) -> Bool {
        let diff = self - other
        let argument = max(precision, -15.0)
        return abs(diff) < Double(pow(10.0, argument))
    }
}
