//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/5/24.
//

import HakoShared

extension SpendCategory {
    static let all: [SpendCategory] = [
        .dining,
        .gas,
        .groceries,
        .travel,
        .flights,
        .hotels,
        .carRentals,
    ]

    static let everything = SpendCategory(
        id: .init(rawValue: "everything"),
        name: "Anything else",
        tint: .foregound
    )

    static let dining = SpendCategory(
        id: .init(rawValue: "dining"),
        name: "Dining",
        tint: .orange
    )

    static let groceries = SpendCategory(
        id: .init(rawValue: "groceries"),
        name: "Groceries",
        tint: .green
    )

    static let travel = SpendCategory(
        id: .init(rawValue: "travel"),
        name: "Travel",
        tint: .blue
    )

    static let gas = SpendCategory(
        id: .init(rawValue: "gas"),
        name: "Gasoline",
        tint: .red
    )

    static let flights = SpendCategory(
        id: .init(rawValue: "flights"),
        name: "Flights",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let hotels = SpendCategory(
        id: .init(rawValue: "hotels"),
        name: "Hotels",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let carRentals = SpendCategory(
        id: .init(rawValue: "car-rentals"),
        name: "Car rentals",
        tint: .blue,
        parent: SpendCategory.travel.id
    )
}

