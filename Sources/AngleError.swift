//
//  AngleError.swift
//  DLAngle
//
//  Created by David Livadaru on 3/11/17.
//
//

import Foundation

public struct AngleError: Error {
    public let reason: String
    
    public var localizedDescription: String {
        return reason
    }
}
