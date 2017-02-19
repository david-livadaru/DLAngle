//
//  AngleType.swift
//  DLAngle
//
//  Created by David Livadaru on 19/02/2017.
//
//

import Foundation

protocol AngleType: class {
    func normalize()
    func normalized() -> Self
}
