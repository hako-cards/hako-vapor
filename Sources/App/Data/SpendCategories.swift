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
        .drugstores,
        .streaming,
        .travel,
        .flights,
        .hotels,
        .carRentals,
        .transit,
    ]

    static let dining = SpendCategory(
        id: "dining",
        name: "Dining",
        tint: .orange
    )

    static let groceries = SpendCategory(
        id: "groceries",
        name: "Groceries",
        tint: .green
    )

    static let travel = SpendCategory(
        id: "travel",
        name: "Travel",
        tint: .blue
    )

    static let gas = SpendCategory(
        id: "gas",
        name: "Gasoline",
        tint: .red
    )

    static let flights = SpendCategory(
        id: "flights",
        name: "Flights",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let hotels = SpendCategory(
        id: "hotels",
        name: "Hotels",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let carRentals = SpendCategory(
        id: "car-rentals",
        name: "Car rentals",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let drugstores = SpendCategory(
        id: "drugstores",
        name: "Drugstores",
        tint: .teal
    )

    static let online = SpendCategory(
        id: "online",
        name: "Online Retail",
        tint: .yellow
    )

    static let streaming = SpendCategory(
        id: "streaming",
        name: "Streaming",
        tint: .gray
    )

    static let transit = SpendCategory(
        id: "transit",
        name: "Transit",
        tint: .blue,
        parent: SpendCategory.travel.id
    )
}
