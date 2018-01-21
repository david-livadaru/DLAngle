//
//  RadianConstants.swift
//  DLAngle
//
//  Created by David Livadaru on 1/21/18.
//

import Foundation

public extension Radian {
    // swiftlint:disable identifier_name
    static var pi: Radian {
        return Radian(rawValue: Double.pi)
    }

    static var pi_2: Radian {
        return Radian(rawValue: Double.pi / 2)
    }

    static var pi_3: Radian {
        return Radian(rawValue: Double.pi / 3)
    }

    static var pi_4: Radian {
        return Radian(rawValue: Double.pi / 4)
    }

    static var pi_6: Radian {
        return Radian(rawValue: Double.pi / 6)
    }
    // swiftlint:enable identifier_name
}
