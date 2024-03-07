//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/6/24.
//

import Foundation
import HakoShared
import Time

extension PointKind {
    static func Q12024(activateBy: Date? = nil) throws -> Self {
        try rotating(year: 2024, startingMonth: 1, endingMonth: 3, activateBy: activateBy)
    }

    static func Q22024(activateBy: Date? = nil) throws -> Self {
        try rotating(year: 2024, startingMonth: 4, endingMonth: 6, activateBy: activateBy)
    }

    static func rotating(year: Int, startingMonth: Int, endingMonth: Int, activateBy: Date? = nil) throws -> Self {
        let start = try Fixed(region: .posix, year: year, month: startingMonth).firstInstant.date
        let end = try Fixed(region: .posix, year: year, month: endingMonth).lastSecond.firstInstant.date
        return .rotating(.init(start: start, end: end, activateBy: activateBy))
    }
}
