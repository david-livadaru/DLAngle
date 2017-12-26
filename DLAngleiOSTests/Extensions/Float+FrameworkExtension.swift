//
//  Float+FrameworkExtension.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation

extension Float {
    func equals(to other: Float, precision: Int = 7) -> Bool {
        let diff = self - other
        let argument = max(Float(-precision), -7.0)
        return abs(diff) < Float(pow(10.0, argument))
    }
}
