//
//  Cards.swift
//
//
//  Created by Kyle Bashour on 3/5/24.
//

import Foundation
import HakoShared

enum CardError: Error {
    case duplicateIDs
}

extension Card {
    static func buildCards() throws -> [Card] {
        let cards = try [
            Card(
                id: "amex-everyday-preferred",
                name: "EveryDay Preferred",
                icon: .white,
                issuer: .amex,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 3,
                            attributes: [
                                .caveat("At U.S. supermarkets"),
                                .caveat("On up to $6,000 per year"),
                            ]
                        )
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            multiplier: 2,
                            attributes: [
                                .caveat("At U.S. gas stations"),
                            ]
                        )
                    ]
                ],
                network: .amex
            ),
            Card(
                id: "freedom",
                name: "Freedom",
                icon: .lightBlue,
                issuer: .chase,
                basePoints: [.init(
                    multiplier: 1
                )],
                categoryPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.caveat(
                                "On up to $1,500"
                            )],
                            kind: .Q12024(activateBy: (3, 14))
                        ),
                    ],
                ],
                canCombinePoints: true,
                network: .visa
            ),
            Card(
                id: "freedom-flex",
                name: "Freedom Flex",
                icon: .lightBlue,
                issuer: .chase,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: [],
                    kind: .standard
                )],
                categoryPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.drugstores.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.caveat(
                                "On up to $1,500"
                            )],
                            kind: .Q12024(activateBy: (3, 14))
                        ),
                    ],

                ],
                canCombinePoints: true,
                network: .mastercard
            ),
            Card(
                id: "freedom-unlimited",
                name: "Freedom Unlimited",
                icon: .midBlue,
                issuer: .chase,
                basePoints: [.init(
                    multiplier: 1.5
                )],
                categoryPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.drugstores.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                ],
                canCombinePoints: true, 
                network: .visa
            ),
            Card(
                id: "freedom-rise",
                name: "Freedom Rise",
                icon: .lightBlue,
                issuer: .chase,
                basePoints: [.init(multiplier: 1.5)], 
                network: .visa
            ),
            Card(
                id: "sapphire-preferred",
                name: "Sapphire Preferred",
                icon: .darkBlue,
                issuer: .chase,
                basePoints: [.init(
                    multiplier: 1
                )],
                categoryPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            multiplier: 2
                        ),
                        .init(
                            multiplier: 5,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
                ],
                redemptionReward: .init(
                    amount: .multiplier(1.25),
                    attributes: [.caveat(
                        "When redeemed for Travel through Chase"
                    )]
                ),
                canCombinePoints: true,
                network: .visa
            ),
            Card(
                id: "sapphire-reserve",
                name: "Sapphire Reserve",
                icon: .darkBlue,
                issuer: .chase,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            multiplier: 3
                        ),
                        .init(
                            multiplier: 5,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
                    SpendCategory.flights.id: [
                        .init(
                            multiplier: 10,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
                    SpendCategory.hotels.id: [
                        .init(
                            multiplier: 10,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
                ],
                redemptionReward: .init(
                    amount: .multiplier(1.5),
                    attributes: [.caveat(
                        "When redeemed for Travel through Chase"
                    )]
                ),
                canCombinePoints: true, 
                network: .visa
            ),
            Card(
                id: "united-club-infinite",
                name: "United Club Infinite",
                icon: .black,
                issuer: .chase,
                basePoints: [
                    .init(
                        multiplier: 1,
                        attributes: []
                    ),
                ],
                categoryPoints: [
                    SpendCategory.united.id: [
                        .init(
                            multiplier: 4
                        ),
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            multiplier: 2
                        ),
                    ],
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 2
                        ),
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "blue-cash-everyday",
                name: "Blue Cash Everyday",
                icon: .lightBlue,
                issuer: .amex,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 3,
                            attributes: [
                                .caveat("At U.S. supermarkets"),
                                .caveat("On up to $6,000 per year"),
                            ]
                        ),
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            multiplier: 3,
                            attributes: [.caveat("On up to $6,000 per year")]
                        ),
                    ],
                    SpendCategory.online.id: [
                        .init(
                            multiplier: 3,
                            attributes: [.caveat("On up to $6,000 per year")]
                        ),
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "blue-cash-preferred",
                name: "Blue Cash Preferred",
                icon: .darkBlue,
                issuer: .amex,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 6,
                            attributes: [
                                .caveat("At U.S. supermarkets"),
                                .caveat("On up to $6,000 per year"),
                            ]
                        ),
                    ],
                    SpendCategory.streaming.id: [
                        .init(
                            multiplier: 6,
                            attributes: [.caveat(
                                "Select streaming subscriptions"
                            )]
                        ),
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.transit.id: [
                        .init(
                            multiplier: 3,
                            attributes: [.info(
                                "Including taxis, rideshare, parking, tolls, trains, buses, and more"
                            )]
                        ),
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "platinum",
                name: "Platinum Card",
                icon: .silver,
                issuer: .amex,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.hotels.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .caveat(
                                    "Booked on AmexTravel.com"
                                ),
                            ]
                        ),
                    ],
                    SpendCategory.flights.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .caveat(
                                    "Booked directly with airlines or on AmexTravel.com"
                                ),
                            ]
                        ),
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "gold",
                name: "Gold Card",
                icon: .gold,
                issuer: .amex,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 4
                        ),
                    ],
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 4
                        ),
                    ],
                    SpendCategory.flights.id: [
                        .init(
                            multiplier: 4,
                            attributes: [
                                .caveat(
                                    "Booked directly with airlines or on AmexTravel.com"
                                ),
                            ]
                        ),
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "apple-card",
                name: "Apple Card",
                icon: .white,
                issuer: .apple,
                basePoints: [
                    .init(
                        multiplier: 1,
                        attributes: []
                    ),
                    .init(
                        multiplier: 2,
                        attributes: [.applePay]
                    ),
                ],
                categoryPoints: [
                    SpendCategory.apple.id: [.init(multiplier: 3)],
                ],
                network: .mastercard
            ),
            Card(
                id: "double-cash",
                name: "Double Cash",
                icon: .midBlue,
                issuer: .citi,
                basePoints: [
                    .init(multiplier: 1, attributes: [.info("When you buy")]),
                ],
                redemptionReward: .init(
                    amount: .additional(1),
                    attributes: [.info("When you pay")]
                ),
                network: .mastercard
            ),
            Card(
                id: "aadvantage-exec",
                name: "AA Executive",
                icon: .black,
                issuer: .citi,
                basePoints: [
                    .init(
                        multiplier: 1,
                        attributes: []
                    ),
                ],
                categoryPoints: [
                    SpendCategory.hotels.id: [
                        .init(
                            multiplier: 10,
                            attributes: [
                                .caveat(
                                    "Booked through aa.com/hotels"
                                ),
                            ]
                        ),
                    ],
                    SpendCategory.carRentals.id: [
                        .init(
                            multiplier: 10,
                            attributes: [
                                .caveat(
                                    "Booked through aa.com/cars"
                                ),
                            ]
                        ),
                    ],
                ],
                network: .mastercard
            ),
            Card(
                id: "costco-anywhere",
                name: "Costco Anywhere Visa",
                icon: .gray,
                issuer: .citi,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.costco.id: [
                        .init(
                            multiplier: 2
                        ),
                    ],
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.gas.id: [
                        .init(multiplier: 4),
                    ],
                    SpendCategory.evCharging.id: [
                        .init(multiplier: 4),
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "skymiles-gold",
                name: "Delta SkyMiles Gold",
                icon: .gold,
                issuer: .amex,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.delta.id: [.init(
                        multiplier: 2,
                        attributes: []
                    )],
                    SpendCategory.dining.id: [.init(
                        multiplier: 2,
                        attributes: []
                    )],
                    SpendCategory.groceries.id: [.init(
                        multiplier: 2,
                        attributes: []
                    )],
                ],
                network: .amex
            ),
            Card(
                id: "prime-visa",
                name: "Prime Visa",
                icon: .darkBlue,
                issuer: .chase,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.amazon.id: [.init(
                        multiplier: 5,
                        attributes: [.info(
                            "Including amazon.com, Amazon Fresh, and Whole Foods Market"
                        )]
                    )],
                    SpendCategory.travel.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat(
                                "Booked through Chase Ultimate Rewards"
                            ),
                        ]
                    )],
                    SpendCategory.dining.id: [.init(
                        multiplier: 2,
                        attributes: []
                    )],
                    SpendCategory.transit.id: [.init(
                        multiplier: 2,
                        attributes: []
                    )],
                ],
                network: .visa
            ),
            Card(
                id: "amazon-visa",
                name: "Amazon Visa",
                icon: .lightGray,
                issuer: .chase,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.amazon.id: [.init(
                        multiplier: 3,
                        attributes: [.info(
                            "Including amazon.com, Amazon Fresh, and Whole Foods Market"
                        )]
                    )],
                    SpendCategory.travel.id: [.init(
                        multiplier: 3,
                        attributes: [
                            .caveat(
                                "Booked through Chase Ultimate Rewards"
                            ),
                        ]
                    )],
                    SpendCategory.dining.id: [.init(
                        multiplier: 2,
                        attributes: []
                    )],
                    SpendCategory.transit.id: [.init(
                        multiplier: 2,
                        attributes: []
                    )],
                ],
                network: .visa
            ),
            Card(
                id: "discover-it",
                name: "Discover it Cash Back",
                icon: .midBlue,
                issuer: .discover,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.dining.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q12024()
                    )],
                    SpendCategory.drugstores.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q12024()
                    )],
                    SpendCategory.gas.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q22024()
                    )],
                    SpendCategory.evCharging.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q22024()
                    )],
                    SpendCategory.homeImprovement.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q22024()
                    )],
                    SpendCategory.transit.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("Public transit"),
                            .caveat("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q22024()
                    )],
                ],
                network: .discover
            ),
            Card(
                id: "discover-it-chrome",
                name: "Discover it Chrome",
                icon: .silver,
                issuer: .discover,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.dining.id: [.init(multiplier: 2, attributes: [.caveat("On up to $1,000")])],
                    SpendCategory.gas.id: [.init(multiplier: 2, attributes: [.caveat("On up to $1,000")])],
                ],
                network: .discover
            ),
            Card(
                id: "savor-rewards",
                name: "Savor Rewards",
                icon: .bronze,
                issuer: .capitalOne,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.carRentals.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.dining.id: [.init(multiplier: 4)],
                    SpendCategory.entertainment.id: [
                        .init(multiplier: 8, attributes: [.caveat("On Capital One Entertainment purchases")]),
                        .init(multiplier: 4),
                    ],
                    SpendCategory.streaming.id: [.init(multiplier: 4, attributes: [.caveat("On popular services")])],
                    SpendCategory.groceries.id: [.init(multiplier: 3)],
                ],
                network: .mastercard
            ),
            Card(
                id: "savor-one",
                name: "SavorOne",
                icon: .bronze,
                issuer: .capitalOne,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.carRentals.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                    SpendCategory.entertainment.id: [
                        .init(multiplier: 8, attributes: [.caveat("On Capital One Entertainment purchases")]),
                        .init(multiplier: 3),
                    ],
                    SpendCategory.streaming.id: [.init(multiplier: 3, attributes: [.caveat("On popular services")])],
                    SpendCategory.groceries.id: [.init(multiplier: 3)],
                ],
                network: .mastercard
            ),
            Card(
                id: "venture-rewards",
                name: "Venture Rewards",
                icon: .darkBlue,
                issuer: .capitalOne,
                basePoints: [.init(multiplier: 2)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.carRentals.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                ],
                network: .visa
            ),
            Card(
                id: "venture-one",
                name: "VentureOne",
                icon: .darkBlue,
                issuer: .capitalOne,
                basePoints: [.init(multiplier: 1.25)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.carRentals.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                ],
                network: .mastercard
            ),
            Card(
                id: "venture-x",
                name: "Venture X",
                icon: .darkBlue,
                issuer: .capitalOne,
                basePoints: [.init(multiplier: 2)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(multiplier: 10, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.carRentals.id: [.init(multiplier: 10, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.flights.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                ],
                network: .visa
            ),
            Card(
                id: "ihg-rewards-club-select",
                name: "IHG Rewards Club Select",
                icon: .gray,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(
                        multiplier: 15,
                        attributes: [
                            .caveat("With an IHG Rewards membership"),
                            .caveat("At InterContinental Hotels & Resorts, Hualuxe Hotels, Crowne Plaza Hotels & Resorts, Hotel Indigo and the Holiday Inn "),
                        ]
                    )],
                    SpendCategory.hotels.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("At IHG hotels and resorts"),
                        ]
                    )],
                    SpendCategory.gas.id: [.init(multiplier: 2)],
                    SpendCategory.groceries.id: [.init(multiplier: 2)],
                    SpendCategory.dining.id: [.init(multiplier: 2)],
                ],
                network: .mastercard
            ),
            Card(
                id: "ihg-one-premier",
                name: "IHG One Rewards Premier",
                icon: .gray,
                issuer: .chase,
                basePoints: [.init(multiplier: 3)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(
                        multiplier: 26,
                        attributes: [
                            .caveat("At IHG hotels and resorts"),
                            .info("Up to 10× for being an IHG One Rewards member"),
                            .info("Up to 6× with Platinum Elite Status"),
                        ]
                    )],
                    SpendCategory.travel.id: [.init(multiplier: 5)],
                    SpendCategory.dining.id: [.init(multiplier: 5)],
                    SpendCategory.gas.id: [.init(multiplier: 5)],
                ],
                network: .mastercard
            ),
            Card(
                id: "bilt",
                name: "Bilt",
                icon: .black,
                issuer: .bilt,
                basePoints: [.init(multiplier: 1, attributes: [.bilt5x])],
                categoryPoints: [
                    SpendCategory.lyft.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("When you link Bilt and Lyft"),
                            .bilt5x,
                        ]
                    )],
                    SpendCategory.dining.id: [.init(
                        multiplier: 3,
                        attributes: [.bilt5x]
                    )],
                    SpendCategory.travel.id: [.init(
                        multiplier: 2,
                        attributes: [
                            .caveat("Booked directly through a hotel, airline, or car rental agency"),
                            .bilt5x,
                        ]
                    )],
                    SpendCategory.rent.id: [.init(
                        multiplier: 1,
                        attributes: [
                            .caveat("Up to 100,000 points annually"),
                            .bilt5x,
                        ]
                    )],
                ],
                network: .mastercard
            ),
            Card(
                id: "active-cash",
                name: "Active Cash",
                icon: .red,
                issuer: .wellsFargo,
                basePoints: [.init(multiplier: 2)], network: .visa
            ),
            Card(
                id: "marriot-bonvoy",
                name: "Marriot Bonvoy Business",
                icon: .gray,
                issuer: .amex,
                basePoints: [.init(multiplier: 2)],
                categoryPoints: [
                    SpendCategory.hotels.id: [
                        .init(
                            multiplier: 6,
                            attributes: [.caveat("On eligible purchases at hotels participating in the Marriott Bonvoy program")],
                            kind: .standard
                        )
                    ],
                    SpendCategory.dining.id: [
                        .init(multiplier: 4)
                    ],
                    SpendCategory.gas.id: [
                        .init(multiplier: 4)
                    ],
                    SpendCategory.phoneBill.id: [
                        .init(multiplier: 4, attributes: [.caveat("Purchased directly from U.S. service providers ")])
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "business-gold-card",
                name: "Business Gold Card",
                icon: .gold,
                issuer: .amex,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.yourTopCategories.id: [
                        .init(multiplier: 4, attributes: [.info("On your top 2 eligible categories")])
                    ],
                    SpendCategory.hotels.id: [
                        .init(
                            multiplier: 3,
                            attributes: [
                                .caveat(
                                    "Booked on AmexTravel.com"
                                ),
                            ]
                        ),
                    ],
                    SpendCategory.flights.id: [
                        .init(
                            multiplier: 3,
                            attributes: [
                                .caveat(
                                    "Booked on AmexTravel.com"
                                ),
                            ]
                        ),
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "amex-everyday",
                name: "EveryDay",
                icon: .white,
                issuer: .amex,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 2,
                            attributes: [
                                .caveat("At U.S. supermarkets"),
                                .caveat("On up to $6,000 per year"),
                            ]
                        )
                    ]
                ],
                network: .amex
            ),
            Card(
                id: "amex-hilton-honors",
                name: "Hilton Honors",
                icon: .white,
                issuer: .amex,
                basePoints: [.init(multiplier: 3)],
                categoryPoints: [
                    SpendCategory.gas.id: [
                        .init(multiplier: 5, attributes: [.caveat("At U.S. gas stations")])
                    ],
                    SpendCategory.groceries.id: [
                        .init(multiplier: 5, attributes: [.caveat("At U.S. supermarkets")])
                    ],
                    SpendCategory.dining.id: [
                        .init(multiplier: 5, attributes: [.caveat("At U.S. restaurants, including takeout and delivery")])
                    ],
                    SpendCategory.hotels.id: [
                        .init(multiplier: 7, attributes: [.caveat("For eligible purchases at hotels and resorts in the Hilton portfolio")])
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "barclay-aadvantage-aviator-red",
                name: "AAdvantage Aviator Red",
                icon: .black,
                issuer: .barclays,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.flights.id: [
                        .init(multiplier: 2, attributes: [.caveat("On eligible American Airlines purchases")])
                    ]
                ],
                network: .mastercard
            )
        ].sorted {
            (
                $0.issuer.name,
                $0.name
            ) < (
                $1.issuer.name,
                $1.name
            )
        }

        guard cards.count == Set(cards.map { $0.id }).count else {
            throw CardError.duplicateIDs
        }

        return cards
    }
}
