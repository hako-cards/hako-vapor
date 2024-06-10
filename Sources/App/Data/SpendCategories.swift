//
//  SpendCategories.swift
//
//
//  Created by Kyle Bashour on 3/5/24.
//

import HakoShared

extension SpendCategory {
    static let all: [SpendCategory] = [
        .dining,
        .groceries,
        .onlineGroceries,
        .gas,
        .evCharging,
        .drugstores,
        .starbucks,
        .phoneBill,
        .verizon,
        .internet,
        .utilities,
        .officeSupply,
        .shipping,
        .homeImprovement,
        .online,
        .advertising,
        .entertainment,
        .streaming,
        .amazon,
        .costco,
        .wholesaleClubs,
        .discountStores,
        .walmart,
        .militaryBase,
        .gymMembership,
        .apple,
        .rent,
        .travel,
        .flights,
        .airCanada,
        .alaska,
        .americanAirlines,
        .delta,
        .southwest,
        .united,
        .hotels,
        .carRentals,
        .lyft,
        .transit,
        .chosenCategories,
        .yourTopCategories,
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

    static let onlineGroceries = SpendCategory(
        id: "online-groceries",
        name: "Online Groceries",
        tint: .green
    )

    static let travel = SpendCategory(
        id: "travel",
        name: "Travel",
        tint: .blue
    )
    static let flights = SpendCategory(
        id: "flights",
        name: "Flights",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let carRentals = SpendCategory(
        id: "car-rentals",
        name: "Car rentals",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let gas = SpendCategory(
        id: "gas",
        name: "Gas",
        tint: .red
    )

    static let evCharging = SpendCategory(
        id: "ev",
        name: "EV Charging",
        tint: .green
    )

    static let homeImprovement = SpendCategory(
        id: "home-improvement",
        name: "Home Improvement Stores",
        tint: .orange
    )

    static let delta = SpendCategory(
        id: "delta",
        name: "Delta Airlines",
        tint: .subduedBlue,
        parent: SpendCategory.travel.id
    )

    static let united = SpendCategory(
        id: "united",
        name: "United Airlines",
        tint: .subduedBlue,
        parent: SpendCategory.travel.id
    )

    static let hotels = SpendCategory(
        id: "hotels",
        name: "Hotels",
        tint: .indigo,
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
        tint: .blue
    )

    static let transit = SpendCategory(
        id: "transit",
        name: "Transit",
        tint: .blue
    )

    static let costco = SpendCategory(
        id: "costco",
        name: "Costco",
        tint: .red,
        networks: [.visa]
    )

    static let amazon = SpendCategory(
        id: "amazon",
        name: "Amazon",
        tint: .orange,
        parent: SpendCategory.online.id
    )

    static let entertainment = SpendCategory(
        id: "entertainment",
        name: "Entertainment",
        tint: .pink
    )

    static let rent = SpendCategory(
        id: "rent",
        name: "Rent",
        tint: .foregound
    )

    static let lyft = SpendCategory(
        id: "lyft",
        name: "Lyft",
        tint: .pink
    )

    static let apple = SpendCategory(
        id: "apple",
        name: "Apple",
        tint: .gray
    )

    static let phoneBill = SpendCategory(
        id: "phone-bill",
        name: "Phone Services",
        tint: .indigo
    )

    static let internet = SpendCategory(
        id: "internet",
        name: "Internet Services",
        tint: .blue
    )

    static let yourTopCategories = SpendCategory(
        id: "your-top-categories",
        name: "Top Categories",
        tint: .foregound,
        showCategoryCardsOnly: true
    )

    static let chosenCategories = SpendCategory(
        id: "chosen-categories",
        name: "Chosen Categories",
        tint: .foregound,
        showCategoryCardsOnly: true
    )

    static let alaska = SpendCategory(
        id: "alaska-airlines",
        name: "Alaska Airlines",
        tint: .subduedBlue,
        parent: SpendCategory.travel.id
    )

    static let southwest = SpendCategory(
        id: "southwest",
        name: "Southwest",
        tint: .subduedBlue,
        parent: SpendCategory.travel.id
    )

    static let advertising = SpendCategory(
        id: "advertising",
        name: "Advertising",
        tint: .red
    )

    static let starbucks = SpendCategory(
        id: "starbucks",
        name: "Starbucks",
        tint: .green
    )

    static let airCanada = SpendCategory(
        id: "air-canada",
        name: "Air Canada",
        tint: .red,
        parent: SpendCategory.travel.id
    )

    static let americanAirlines = SpendCategory(
        id: "american-airlines",
        name: "American Airlines",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let officeSupply = SpendCategory(
        id: "office",
        name: "Office Supply Stores",
        tint: .gray
    )

    static let shipping = SpendCategory(
        id: "shipping",
        name: "Shipping",
        tint: .brown
    )

    static let wholesaleClubs = SpendCategory(
        id: "wholesale-clubs",
        name: "Wholesale Clubs",
        tint: .brown
    )

    static let verizon = SpendCategory(
        id: "verizon",
        name: "Verizon",
        tint: .red
    )

    static let utilities = SpendCategory(
        id: "utilities",
        name: "Utilities",
        tint: .gray
    )

    static let discountStores = SpendCategory(
        id: "discount",
        name: "Discount Stores",
        tint: .red
    )

    static let militaryBase = SpendCategory(
        id: "military",
        name: "Military Base",
        tint: .green
    )

    static let walmart = SpendCategory(
        id: "walmart",
        name: "Walmart",
        tint: .subduedBlue
    )

    static let gymMembership = SpendCategory(
        id: "gym",
        name: "Gym Memberships",
        tint: .purple
    )
}
