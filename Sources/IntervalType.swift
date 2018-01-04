//
//  IntervalType.swift
//  DLAngle
//
//  Created by David Livadaru on 3/13/17.
//

import Foundation
#if os(iOS)
    import DLInterval_iOS
#elseif os(watchOS)
    import DLInteval_watchOS
#elseif os(tvOS)
    import DLInteval_tvOS
#elseif os(macOS)
    import DLInteval_macOS
#elseif os(Linux)
    import DLInteval
#endif

#if os(iOS)
    public typealias IntervalType = DLInterval_iOS.IntervalType
#elseif os(watchOS)
    public typealias IntervalType = DLInteval_watchOS.IntervalType
#elseif os(tvOS)
    public typealias IntervalType = DLInteval_tvOS.IntervalType
#elseif os(macOS)
    public typealias IntervalType = DLInteval_macOS.IntervalType
#elseif os(Linux)
    public typealias IntervalType = DLInteval.IntervalType
#endif
