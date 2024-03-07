//
//  Cards.swift
//
//
//  Created by Kyle Bashour on 3/5/24.
//

import HakoShared
import Foundation

extension Card {
    static func buildCards() throws -> [Card] {
        [
            Card(
                id: "freedom",
                name: "Freedom",
                icon: .lightBlue,
                issuer: .chase,
                basePoints: [.init(
                    percent: 1,
                    attributes: []
                )],
                rotatingPoints: [
                    try RotatingCategoryPoints(
                        year: 2024,
                        startingMonth: 1,
                        endingMonth: 3,
                        requiresActivation: true,
                        categoryPoints: [
                            SpendCategory.groceries.id: [
                                .init(
                                    percent: 5,
                                    attributes: [
                                        .caveat(
                                            "On up to $1,500"
                                        ),
                                    ]
                                )
                            ],
                        ]
                    )
                ],
                canCombinePoints: true
            ),
            Card(
                id: "freedom-flex",
                name: "Freedom Flex",
                icon: .lightBlue,
                issuer: .chase,
                basePoints: [.init(
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        )
                    ],
                    SpendCategory.drugstores.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        )
                    ],
                ],
                rotatingPoints: [
                    try RotatingCategoryPoints(
                        year: 2024,
                        startingMonth: 1,
                        endingMonth: 3,
                        requiresActivation: true,
                        categoryPoints: [
                            SpendCategory.groceries.id: [
                                .init(
                                    percent: 5,
                                    attributes: [
                                        .caveat(
                                            "On up to $1,500"
                                        )
                                    ]
                                )
                            ],
                        ]
                    )
                ],
                canCombinePoints: true
            ),
            Card(
                id: "freedom-unlimited",
                name: "Freedom Unlimited",
                icon: .midBlue,
                issuer: .chase,
                basePoints: [.init(
                    percent: 1.5,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        )
                    ],
                    SpendCategory.drugstores.id: [
                        .init(
                            percent: 3,
                            attributes: []
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        )
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            percent: 2,
                            attributes: []
                        ),
                        .init(
                            percent: 5,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        )
                    ],
                ],
                redemptionMultiplier: 1.25,
                canCombinePoints: true
            ),
            Card(
                id: "sapphire-reserve",
                name: "Sapphire Reserve",
                icon: .darkBlue,
                issuer: .chase,
                basePoints: [.init(
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        )
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        ),
                        .init(
                            percent: 5,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
                    SpendCategory.flights.id: [
                        .init(
                            percent: 10,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
                    SpendCategory.hotels.id: [
                        .init(
                            percent: 10,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
                ],
                redemptionMultiplier: 1.5,
                canCombinePoints: true
            ),
            Card(
                id: "united-club-infinite",
                name: "United Club Infinite",
                icon: .black,
                issuer: .chase,
                basePoints: [
                    .init(
                        percent: 1,
                        attributes: []
                    )
                ],
                fixedPoints: [
                    SpendCategory.united.id: [
                        .init(
                            percent: 4,
                            attributes: []
                        ),
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            percent: 2,
                            attributes: []
                        ),
                    ],
                    SpendCategory.dining.id: [
                        .init(
                            percent: 2,
                            attributes: []
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        ),
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        ),
                    ],
                    SpendCategory.online.id: [
                        .init(
                            percent: 3,
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            percent: 6,
                            attributes: [.caveat(
                                "On up to $6,000 per year"
                            )]
                        ),
                    ],
                    SpendCategory.streaming.id: [
                        .init(
                            percent: 6,
                            attributes: [.caveat(
                                "Select streaming subscriptions"
                            )]
                        ),
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        ),
                    ],
                    SpendCategory.transit.id: [
                        .init(
                            percent: 3,
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.hotels.id: [
                        .init(
                            percent: 5,
                            attributes: [
                                .caveat(
                                    "Booked on AmexTravel.com"
                                )
                            ]
                        ),
                    ],
                    SpendCategory.flights.id: [
                        .init(
                            percent: 5,
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.dining.id: [
                        .init(
                            percent: 4,
                            attributes: []
                        ),
                    ],
                    SpendCategory.groceries.id: [
                        .init(
                            percent: 4,
                            attributes: []
                        ),
                    ],
                    SpendCategory.flights.id: [
                        .init(
                            percent: 4,
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
                        percent: 1,
                        attributes: []
                    ),
                    .init(
                        percent: 2,
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
                    .init(
                        percent: 2,
                        attributes: [.caveat(
                            "1% when you buy, 1% as you pay"
                        )]
                    )
                ]
            ),
            Card(
                id: "aadvantage-exec",
                name: "AA Executive",
                icon: .black,
                issuer: .citi,
                basePoints: [
                    .init(
                        percent: 1,
                        attributes: []
                    ),
                ],
                fixedPoints: [
                    SpendCategory.hotels.id: [
                        .init(
                            percent: 10,
                            attributes: [
                                .caveat(
                                    "Booked through aa.com/hotels"
                                )
                            ]
                        )
                    ],
                    SpendCategory.carRentals.id: [
                        .init(
                            percent: 10,
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.costco.id: [
                        .init(
                            percent: 2,
                            attributes: []
                        )
                    ],
                    SpendCategory.dining.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        )
                    ],
                    SpendCategory.travel.id: [
                        .init(
                            percent: 3,
                            attributes: []
                        )
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            percent: 4,
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.delta.id: [.init(
                        percent: 2,
                        attributes: []
                    )],
                    SpendCategory.dining.id: [.init(
                        percent: 2,
                        attributes: []
                    )],
                    SpendCategory.groceries.id: [.init(
                        percent: 2,
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.amazon.id: [.init(
                        percent: 5,
                        attributes: [.caveat(
                            "Including amazon.com, Amazon Fresh, and Whole Foods Market"
                        )]
                    )],
                    SpendCategory.travel.id: [.init(
                        percent: 5,
                        attributes: [
                            .caveat(
                                "Booked through Chase Ultimate Rewards"
                            )
                        ]
                    )],
                    SpendCategory.dining.id: [.init(
                        percent: 2,
                        attributes: []
                    )],
                    SpendCategory.transit.id: [.init(
                        percent: 2,
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
                    percent: 1,
                    attributes: []
                )],
                fixedPoints: [
                    SpendCategory.amazon.id: [.init(
                        percent: 3,
                        attributes: [.caveat(
                            "Including amazon.com, Amazon Fresh, and Whole Foods Market"
                        )]
                    )],
                    SpendCategory.travel.id: [.init(
                        percent: 3,
                        attributes: [
                            .caveat(
                                "Booked through Chase Ultimate Rewards"
                            )
                        ]
                    )],
                    SpendCategory.dining.id: [.init(
                        percent: 2,
                        attributes: []
                    )],
                    SpendCategory.transit.id: [.init(
                        percent: 2,
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
                    percent: 1,
                    attributes: []
                )],
                rotatingPoints: [
                    try RotatingCategoryPoints(
                        year: 2024,
                        startingMonth: 1,
                        endingMonth: 3,
                        requiresActivation: true,
                        categoryPoints: [
                            SpendCategory.dining.id: [.init(
                                percent: 5,
                                attributes: [
                                    .caveat(
                                        "On up to $1,500"
                                    ),
                                ]
                            )],
                            SpendCategory.drugstores.id: [.init(
                                percent: 5,
                                attributes: [
                                    .caveat(
                                        "On up to $1,500"
                                    ),
                                ]
                            )],
                        ]
                    )
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
    }
}
