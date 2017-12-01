//
//  Atan2ArgumentsChecker.swift
//  DLAngle
//
//  Created by David Livadaru on 12/1/17.
//

import Foundation

class Atan2ArgumentsChecker: ArgumentsChecker {
    init(y: Double, x: Double) {
        super.init(predicate: Predicate(closure: {
            if x == 0 {
                return y != 0
            }
            return true
        }))
    }
}
