//
//  IntervalOperators.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

infix operator ..: RangeFormationPrecedence
infix operator .>.: RangeFormationPrecedence
infix operator .<.: RangeFormationPrecedence
infix operator .><.: RangeFormationPrecedence

public func ..(_ lowerBound: Double, _ upperBound: Double) -> AbstractInterval {
    return AbstractInterval(lowerBound: lowerBound, upperBound: upperBound)
}

public func .>.(_ lowerBound: Double, _ upperBound: Double) -> Interval {
    return Interval(lowerBound: IntervalBound(value: lowerBound, type: .open),
                    upperBound: IntervalBound(value: upperBound, type: .closed))
}

public func .<.(_ lowerBound: Double, _ upperBound: Double) -> Interval {
    return Interval(lowerBound: IntervalBound(value: lowerBound, type: .closed),
                    upperBound: IntervalBound(value: upperBound, type: .open))
}

public func .><.(_ lowerBound: Double, _ upperBound: Double) -> Interval {
    return Interval(lowerBound: IntervalBound(value: lowerBound, type: .open),
                    upperBound: IntervalBound(value: upperBound, type: .open))
}
