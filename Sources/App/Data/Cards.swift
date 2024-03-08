//
//  Cards.swift
//
//
//  Created by Kyle Bashour on 3/5/24.
//

import HakoShared
import Foundation

enum CardError: Error {
    case duplicateIDs
}

extension Card {
    static func buildCards() throws -> [Card] {
        let cards = [
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
                            kind: try .Q12024()
                        )
                    ],
                ],
                canCombinePoints: true
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
                        )
                    ],
                    SpendCategory.drugstores.id: [
                        .init(
                            multiplier: 3
                        )
                    ],
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.caveat(
                                "On up to $1,500"
                            )],
                            kind: try .Q12024()
                        )
                    ],
                    
                ],
                canCombinePoints: true
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
                        )
                    ],
                    SpendCategory.drugstores.id: [
                        .init(
                            multiplier: 3
                        )
                    ],
                ],
                canCombinePoints: true
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
                        )
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
                        )
                    ],
                ],
                redemptionReward: .init(
                    amount: .multiplier(1.25),
                    attributes: [.caveat(
                        "When redeemed for Travel through Chase"
                    )]
                ),
                canCombinePoints: true
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
                        )
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
                canCombinePoints: true
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
                    )
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
                ]
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
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.online.id: [
                        .init(
                            multiplier: 3,
                            attributes: [.caveat(
                                "On up to $6,000 per year"
                            )]
                        )
                    ]
                ]
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
                            attributes: [.caveat(
                                "On up to $6,000 per year"
                            )]
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
                            attributes: [.caveat(
                                "On up to $6,000 per year"
                            )]
                        )
                    ]
                ]
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
                                )
                            ]
                        ),
                    ],
                    SpendCategory.flights.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .caveat(
                                    "Booked directly with airlines or on AmexTravel.com"
                                )
                            ]
                        ),
                    ],
                ]
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
                                )
                            ]
                        ),
                    ],
                ]
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
                    )
                ]
            ),
            Card(
                id: "double-cash",
                name: "Double Cash",
                icon: .midBlue,
                issuer: .citi,
                basePoints: [
                    .init(multiplier: 1)
                ],
                redemptionReward: .init(
                    amount: .additional(1),
                    attributes: [.caveat("1% when you buy, 1% as you pay")]
                )
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
                                )
                            ]
                        )
                    ],
                    SpendCategory.carRentals.id: [
                        .init(
                            multiplier: 10,
                            attributes: [
                                .caveat(
                                    "Booked through aa.com/cars"
                                )
                            ]
                        )
                    ],
                ]
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
                        )
                    ],
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 3
                        )
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            multiplier: 3
                        )
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            multiplier: 4,
                            attributes: [.caveat(
                                "And EV charging"
                            )]
                        )
                    ],
                ]
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
                ]
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
                        attributes: [.caveat(
                            "Including amazon.com, Amazon Fresh, and Whole Foods Market"
                        )]
                    )],
                    SpendCategory.travel.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat(
                                "Booked through Chase Ultimate Rewards"
                            )
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
                ]
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
                        attributes: [.caveat(
                            "Including amazon.com, Amazon Fresh, and Whole Foods Market"
                        )]
                    )],
                    SpendCategory.travel.id: [.init(
                        multiplier: 3,
                        attributes: [
                            .caveat(
                                "Booked through Chase Ultimate Rewards"
                            )
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
                ]
            ),
            Card(
                id: "discover-it",
                name: "Discover it",
                icon: .midBlue,
                issuer: .discover,
                basePoints: [.init(
                    multiplier: 1,
                    attributes: []
                )],
                categoryPoints: [
                    SpendCategory.dining.id: [.init(
                        multiplier: 5,
                        attributes: [.caveat(
                            "On up to $1,500"
                        )],
                        kind: try .Q12024()
                    )],
                    SpendCategory.drugstores.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat(
                                "On up to $1,500"
                            ),
                        ],
                        kind: try .Q12024()
                    )],
                ]
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
                ]
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
                ]
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
                ]
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
                ]
            ),
            Card(
                id: "bilt",
                name: "Bilt",
                icon: .black,
                issuer: .bilt,
                basePoints: [.init(multiplier: 1, attributes: [.bilt5x])],
                categoryPoints: [
                    SpendCategory.lyft.id: [.init(multiplier: 5, attributes: [.bilt5x, .caveat("When you link Bilt and Lyft")])],
                    SpendCategory.dining.id: [.init(multiplier: 3, attributes: [.bilt5x])],
                    SpendCategory.travel.id: [.init(multiplier: 2, attributes: [.bilt5x, .caveat("Booked directly through a hotel, airline, or car rental agency")])],
                    SpendCategory.rent.id: [.init(multiplier: 1, attributes: [.bilt5x, .caveat("Up to 100,000 points annually")])],
                ]
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
