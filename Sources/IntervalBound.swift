//
//  IntervalBound.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

public struct IntervalBound: Comparable, ExpressibleByFloatLiteral {
    public enum BoundType: Comparable {
        case closed, open, undefined
        
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
            case (.undefined, .open):
                fallthrough
            case (.undefined, .closed):
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
        self.type = .undefined
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
