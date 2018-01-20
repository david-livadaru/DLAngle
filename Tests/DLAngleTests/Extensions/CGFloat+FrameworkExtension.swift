//
//  CGFloat+FrameworkExtension.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
import CoreGraphics

extension CGFloat {
    func equals(to other: CGFloat, precision: Int = 15) -> Bool {
        let diff = self - other
        let argument = Swift.max(Double(-precision), 15.0)
        return abs(diff) < CGFloat(pow(10.0, argument))
    }
}
