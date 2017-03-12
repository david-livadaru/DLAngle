//
//  IntervalOperators.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

infix operator ..: RangeFormationPrecedence
//infix operator >..: RangeFormationPrecedence

func ..(_ lowerBound: Double, _ upperBound: Double) -> AbstractInterval {
    return AbstractInterval(lowerBound: lowerBound, upperBound: upperBound)
}

