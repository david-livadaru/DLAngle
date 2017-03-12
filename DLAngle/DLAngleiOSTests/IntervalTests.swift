//
//  IntervalTests.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import XCTest
@testable import DLAngle_iOS

class IntervalTests: XCTestCase {
    func testIntersection() {
        let interval1: Interval = [1.0..2.0]
        let interval2: Interval = [3.0..4.0]
        let intersection = interval1.intersection(with: interval2)
        print(intersection)
    }
}
