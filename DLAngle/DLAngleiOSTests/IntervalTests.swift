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
    func testIntersectionCase1() {
        let interval1: Interval = [1.0..2.0]
        let interval2: Interval = [1.5..3.0]
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty == false, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.value == 1.5, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.value == 2.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.boundary.type == .closed, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.boundary.type == .closed, "Interval's intersection is returning working properly.")
    }
    
    func testIntersectionCase2() {
        let interval1: Interval = [4.0..7.0]
        let interval2: Interval = [3.0..5.0]
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty == false, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.value == 4.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.value == 5.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.boundary.type == .closed, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.boundary.type == .closed, "Interval's intersection is returning working properly.")
    }
    
    func testIntersectionCase3() {
        let interval1: Interval = [2.0..8.0]
        let interval2: Interval = [3.0..5.0]
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty == false, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.value == 3.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.value == 5.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.boundary.type == .closed, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.boundary.type == .closed, "Interval's intersection is returning working properly.")
    }
    
    func testIntersectionCase4() {
        let interval1: Interval = -1.0.><.1.0
        let interval2: Interval = -5.0.><.5.0
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty == false, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.value == -1.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.value == 1.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.boundary.type == .open, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.boundary.type == .open, "Interval's intersection is returning working properly.")
    }
    
    func testIntersectionCase5() {
        let interval1: Interval = 1.0.<.2.0
        let interval2: Interval = 1.5.>.3.0
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty == false, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.value == 1.5, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.value == 2.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.boundary.type == .open, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.boundary.type == .open, "Interval's intersection is returning working properly.")
    }

    func testIntersectionCase6() {
        let interval1: Interval = 1.0.>.2.5
        let interval2: Interval = [1..2]
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty == false, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.value == 1.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.value == 2.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.boundary.type == .open, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.boundary.type == .closed, "Interval's intersection is returning working properly.")
    }
    
    func testIntersectionCase7() {
        let interval1: Interval = 1.0.><.2
        let interval2: Interval = [1.5..2]
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty == false, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.value == 1.5, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.value == 2.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.boundary.type == .closed, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.boundary.type == .open, "Interval's intersection is returning working properly.")
    }
    
    func testIntersectionCase8() {
        let interval1: Interval = 1.0.><.2
        let interval2: Interval = [1..2]
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty == false, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.value == 1.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.value == 2.0, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.lowerBoundary.boundary.type == .open, "Interval's intersection is returning working properly.")
        XCTAssert(intersection.upperBoundary.boundary.type == .open, "Interval's intersection is returning working properly.")
    }
    
    func testEmptyIntersection() {
        let interval1: Interval = [1.0..2.0]
        let interval2: Interval = [3.0..4.0]
        let intersection = interval1.intersection(with: interval2)
        XCTAssert(intersection.isEmpty, "Interval's intersection is returning working properly.")
    }
    
    func testElementContainment1() {
        let interval: Interval = 1.0.><.2.0
        XCTAssert(interval.contains(1.0) == false, "Containment is not working")
    }
    
    func testElementContainment2() {
        let interval: Interval = 1.0.><.2.0
        XCTAssert(interval.contains(2.0) == false, "Containment is not working")
    }
    
    func testElementContainment3() {
        let interval: Interval = 1.0.><.2.0
        XCTAssert(interval.contains(1.5), "Containment is not working")
    }
    
    func testElementContainment4() {
        let interval: Interval = 1.0.>.2.0
        XCTAssert(interval.contains(1.0) == false, "Containment is not working")
    }
    
    func testElementContainment5() {
        let interval: Interval = 1.0.>.2.0
        XCTAssert(interval.contains(2.0), "Containment is not working")
    }
    
    func testElementContainment6() {
        let interval: Interval = 1.0.>.2.0
        XCTAssert(interval.contains(1.5), "Containment is not working")
    }
    
    func testElementContainment7() {
        let interval: Interval = 1.0.<.2.0
        XCTAssert(interval.contains(1.0), "Containment is not working")
    }
    
    func testElementContainment8() {
        let interval: Interval = 1.0.<.2.0
        XCTAssert(interval.contains(2.0) == false, "Containment is not working")
    }
    
    func testElementContainment9() {
        let interval: Interval = 1.0.<.2.0
        XCTAssert(interval.contains(1.5), "Containment is not working")
    }
    
    func testElementContainment10() {
        let interval: Interval = [1.0..2.0]
        XCTAssert(interval.contains(1.0), "Containment is not working")
    }
    
    func testElementContainment11() {
        let interval: Interval = [1.0..2.0]
        XCTAssert(interval.contains(2.0), "Containment is not working")
    }
    
    func testElementContainment12() {
        let interval: Interval = [1.0..2.0]
        XCTAssert(interval.contains(1.5), "Containment is not working")
    }
    
    func testElementContainment13() {
        let interval: Interval = [1.0..2.0]
        XCTAssert(interval.contains(2.1) == false, "Containment is not working")
    }
}
