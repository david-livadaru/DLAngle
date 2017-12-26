//
//  XCTest+FrameworkExtension.swift
//  DLAngleiOSTests
//
//  Created by David Livadaru on 12/26/17.
//

import Foundation
import XCTest
import DLAngle_iOS

extension XCTestCase {
    func failMessage(forCatched error: Error,
                     testing function: TrigonometricFunction) -> String {
        return "'\(function.rawValue.capitalized)' check failed due to error \(error.localizedDescription)"
    }

    func throwFailedMessage(for function: TrigonometricFunction) -> String {
        return "'\(function.rawValue.capitalized)' does not throw error for an invalid paramter."
    }
}
