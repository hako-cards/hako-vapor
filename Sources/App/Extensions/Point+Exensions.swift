//
//  Point+Exensions.swift
//
//
//  Created by Kyle Bashour on 3/6/24.
//

import Foundation
import HakoShared
import Time

extension PointKind {
    static func Q42024(activateBy: (month: Int, day: Int)? = nil) throws -> Self {
        try rotating(year: 2024, startingMonth: 10, endingMonth: 12, activateBy: activateBy)
    }

    static func rotating(year: Int, startingMonth: Int, endingMonth: Int, activateBy: (month: Int, day: Int)? = nil) throws -> Self {
        let activateBy = try activateBy.flatMap { month, day in
            try Fixed(region: .posix, year: year, month: month, day: day).firstInstant.date
        }
        let start = try Fixed(region: .posix, year: year, month: startingMonth).firstInstant.date
        let end = try Fixed(region: .posix, year: year, month: endingMonth).lastSecond.firstInstant.date
        return .rotating(.init(start: start, end: end, activateBy: activateBy))
    }
}
