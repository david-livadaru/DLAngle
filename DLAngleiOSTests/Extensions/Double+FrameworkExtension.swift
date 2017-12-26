//
//  Double+FrameworkExtension.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation

extension Double {
    func equals(to other: Double, precision: Int = 15) -> Bool {
        let diff = self - other
        let argument = max(Double(-precision), -15.0)
        return abs(diff) < Double(pow(10.0, argument))
    }
}
