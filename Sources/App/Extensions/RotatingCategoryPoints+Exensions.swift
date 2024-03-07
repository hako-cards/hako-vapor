//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/6/24.
//

import HakoShared
import Time

extension RotatingCategoryPoints {
    public init(
        year: Int,
        startingMonth: Int,
        endingMonth: Int,
        requiresActivation: Bool,
        categoryPoints: [SpendCategory.ID : [Points]]
    ) throws {
        let start = try Fixed(region: .posix, year: 2024, month: 1).firstInstant.date
        let end = try Fixed(region: .posix, year: 2024, month: 3).lastSecond.firstInstant.date

        self.init(
            start: start,
            end: end,
            requiresActivation: requiresActivation,
            categoryPoints: categoryPoints
        )
    }
}
