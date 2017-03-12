//
//  Interval.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

public struct Interval: IntervalType, ExpressibleByArrayLiteral, ExpressibleByIntervalArray, ExpressibleByIntervalTuple, ExpressibleByClosedRange, ExpressibleByRange {//, CustomDebugStringConvertible {
    public typealias Bound = IntervalBound
    
    public let lowerBound: Bound
    public let upperBound: Bound
    
    public var isEmpty: Bool {
        return lowerBound.type == .open && lowerBound == upperBound
    }
    
//    public var debugDescription: String {
//        return "Interval : { lower: \(lowerBound), upper: \(upperBound), isEmpty: \(isEmpty) }"
//    }
    
    public static let zero = Interval((0..0))
    
    public init(lowerBound: Bound, upperBound: Bound) {
        self.lowerBound = lowerBound
        self.upperBound = upperBound
        
        validateBounds()
    }
    
    // MARK: ExpressibleByArrayLiteral
    
    public typealias Element = AbstractInterval
    
    public init(arrayLiteral elements: Element...) {
        Interval.validateIntervalArray(elements)
        
        let first = elements.first!
        lowerBound = IntervalBound(value: first.lowerBound, type: .closed)
        upperBound = IntervalBound(value: first.upperBound, type: .closed)
        
        validateBounds()
    }
    
    // MARK: ExpressibleByIntervalArray
    
    public init(_ intervalArray: [AbstractInterval]) {
        Interval.validateIntervalArray(intervalArray)
        
        let first = intervalArray.first!
        lowerBound = IntervalBound(value: first.lowerBound, type: .closed)
        upperBound = IntervalBound(value: first.upperBound, type: .closed)
        
        validateBounds()
    }
    
    // MARK: ExpressibleByIntervalTuple
    
    public init(_ intervalTuple: (AbstractInterval)) {
        lowerBound = IntervalBound(value: intervalTuple.lowerBound, type: .open)
        upperBound = IntervalBound(value: intervalTuple.upperBound, type: .open)
        
        validateBounds()
    }
    
    // MARK: ExpressibleByClosedRange
    
    public typealias RangeBound = Double
    
    public init(_ closedRange: ClosedRange<RangeBound>) {
        lowerBound = IntervalBound(value: closedRange.lowerBound, type: .closed)
        upperBound = IntervalBound(value: closedRange.upperBound, type: .closed)
        
        validateBounds()
    }
    
    // MARK: ExpressibleByRange
    
    public init(_ range: Range<RangeBound>) {
        lowerBound = IntervalBound(value: range.lowerBound, type: .closed)
        upperBound = IntervalBound(value: range.upperBound, type: .open)
        
        validateBounds()
    }
    
    // MARK: Public interface
    
    public func intersection(with other: Interval) -> Interval {
        var lower: IntervalBound! // ! is safe because will be set before usage
        if other.lowerBound < upperBound {
            lower = other.lowerBound
        } else if lowerBound < other.upperBound {
            lower = lowerBound
        } else {
            return Interval.zero
        }
        
        let upper = min(other.upperBound, upperBound)
        return Interval(lowerBound: lower, upperBound: upper)
    }
    
    // MARK: Private functionality
    
    private static func validateIntervalArray(_ array: [AbstractInterval]) {
        assert(array.count > 0, "Cannot initialize Interval with empty array.")
        if array.count > 1 {
            var ignoredElements = array
            ignoredElements.removeFirst()
            if ignoredElements.count > 0 {
                print("The following elements are ignored: \(ignoredElements)")
            }
        }
    }
    
    private func validateBounds() {
        assert(upperBound >= lowerBound, "Cannot create an interval with lowerBound > upperBound.")
        
        switch (lowerBound.type, upperBound.type) {
        case (.closed, .open):
            assert(upperBound.value != lowerBound.value, "Cannot create a closed open interval with the same bound values.")
        case (.open, .closed):
            assert(upperBound.value != lowerBound.value, "Cannot create an open closed interval with the same bound values.")
        case (.closed, .closed):
            assert(lowerBound.value != -Double.infinity, "Cannot create an interval closed in -infinity.")
            assert(upperBound.value != Double.infinity, "Cannot create an interval closed in infinity.")
        case (.undefined, _):
            fallthrough
        case (_, .undefined):
            assert(false, "Cannot create an interval with undefined bounds.")
        default:
            break
        }
    }
}
