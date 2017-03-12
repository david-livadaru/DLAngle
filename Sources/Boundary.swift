//
//  Boundary.swift
//  DLAngle
//
//  Created by David Livadaru on 3/12/17.
//
//

import Foundation

public struct Boundary: Comparable, NSPredicateFormatConvertible {
    public enum BoundaryType: NSPredicateFormatConvertible {
        case closed, open
        
        public var predicateFormat: String {
            switch self {
            case .closed:
                return "="
            default:
                return ""
            }
        }
    }
    
    public enum Side: NSPredicateFormatConvertible {
        case left, right
        
        public var predicateFormat: String {
            switch self {
            case .left:
                return ">"
            case .right:
                return "<"
            }
        }
    }
    
    let type: BoundaryType
    let side: Side
    
    // MARK: NSPredicateFormatConvertible
    
    public var predicateFormat: String {
        return "\(side.predicateFormat)\(type.predicateFormat)"
    }
    
    // MARK: Equatable
    
    public static func ==(_ lhs: Boundary, _ rhs: Boundary) -> Bool {
        return lhs.side == rhs.side && lhs.type == rhs.type
    }
    
    // MARK: Comparable
    
    public static func <(_ lhs: Boundary, _ rhs: Boundary) -> Bool {
        switch (lhs.side, lhs.type, rhs.side, rhs.type) {
        case (.right, .open, .right, .closed):
            fallthrough
        case (.left, .closed, .left, .open):
            return true
        default:
            return false
        }
    }
}
