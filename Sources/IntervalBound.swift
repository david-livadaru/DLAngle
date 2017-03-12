//
//  IntervalBound.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

public struct Boundary: Comparable {
    public enum BoundaryType {
        case closed, open, unspecified
    }
    
    public enum Side {
        case left, right, unspecified
    }
    
    let type: BoundaryType
    let side: Side
    
    public static func ==(_ lhs: Boundary, _ rhs: Boundary) -> Bool {
        if lhs.side == rhs.side && lhs.type == rhs.type {
            return true
        }
        
        switch (lhs.side, lhs.type, rhs.side, rhs.type) {
        case (.unspecified, .unspecified, _, _):
            fallthrough
        case (_, _, .unspecified, .unspecified):
            return true
        default:
            return false
        }
    }
    
    public static func <(_ lhs: Boundary, _ rhs: Boundary) -> Bool {
        switch (lhs.side, lhs.type, rhs.side, rhs.type) {
        case (.unspecified, .unspecified, .right, let type) where type != .unspecified:
            return true
        case (.left, let type, .unspecified, .unspecified) where type != .unspecified:
            return true
        default:
            return false
        }
    }
}

public struct IntervalBound: Comparable, ExpressibleByFloatLiteral {
    public enum BoundType: Comparable {
        case closed, open, unspecified
        
        public static func ==(_ lhs: BoundType, _ rhs: BoundType) -> Bool {
            switch (lhs, rhs) {
            case (.open, .closed):
                fallthrough
            case (.closed, .open):
                return false
            default:
                return true
            }
        }
        
        public static func <(_ lhs: BoundType, _ rhs: BoundType) -> Bool {
            switch (lhs, rhs) {
            case (.open, .closed):
                fallthrough
            case (.unspecified, .open):
                fallthrough
            case (.unspecified, .closed):
                return true
            default:
                return false
            }
        }
    }
    
    public let value: Double
    public let type: BoundType
    
    public init(value: Double, type: BoundType) {
        self.value = value
        self.type = type
    }
    
    // MARK: ExpressibleByFloatLiteral
    
    public typealias FloatLiteralType = Double
    
    public init(floatLiteral value: FloatLiteralType) {
        self.value = value
        self.type = .unspecified
    }
    
    // MARK: Equatable
    
    public static func ==(lhs: IntervalBound, rhs: IntervalBound) -> Bool {
        return lhs.type == rhs.type && lhs.value == rhs.value
    }
    
    // MARK: Comparable
    
    public static func <(lhs: IntervalBound, rhs: IntervalBound) -> Bool {
        if lhs.value == rhs.value  {
            return lhs.type < rhs.type
        } else if lhs.type == rhs.type {
            return lhs.value < rhs.value
        } else {
            return lhs.value < rhs.value
        }
    }
}
