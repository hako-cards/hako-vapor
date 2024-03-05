//
//  Cards.swift
//
//
//  Created by Kyle Bashour on 3/5/24.
//

import HakoShared
import Foundation

extension Card {
    static let all = [
        Card(
            id: "freedom-unlimited",
            name: "Freedom Unlimited",
            issuer: .chase,
            basePoints: [.init(
                percent: 1.5,
                attributes: []
            )],
            categoryPoints: .fixed(
                .init(
                    categoryPoints: [
                        SpendCategory.dining.id: [
                            .init(
                                percent: 3,
                                attributes: []
                            )
                        ],
                    ]
                )
            ),
            redemptionMultiplier: nil,
            canCombinePoints: true,
            icon: .midBlue
        ),
        Card(
            id: "sapphire-preferred",
            name: "Sapphire Preferred",
            issuer: .chase,
            basePoints: [.init(
                percent: 1,
                attributes: []
            )],
            categoryPoints: .fixed(
                .init(
                    categoryPoints: [
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
                                    "Purchased through Chase"
                                )]
                            )
                        ],
                    ]
                )
            ),
            redemptionMultiplier: 1.25,
            canCombinePoints: true,
            icon: .darkBlue
        ),
        Card(
            id: "sapphire-reserve",
            name: "Sapphire Reserve",
            issuer: .chase,
            basePoints: [.init(
                percent: 1,
                attributes: []
            )],
            categoryPoints: .fixed(
                .init(
                    categoryPoints: [
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
                                    "Purchased through Chase"
                                )]
                            ),
                        ],
                        SpendCategory.flights.id: [
                            .init(
                                percent: 10,
                                attributes: [.caveat(
                                    "Purchased through Chase"
                                )]
                            ),
                        ],
                        SpendCategory.hotels.id: [
                            .init(
                                percent: 10,
                                attributes: [.caveat(
                                    "Purchased through Chase"
                                )]
                            ),
                        ],
                    ]
                )
            ),
            redemptionMultiplier: 1.5,
            canCombinePoints: true,
            icon: .darkBlue
        ),
        Card(
            id: "united-club-infinite",
            name: "United Club Infinite",
            issuer: .chase,
            basePoints: [
                .init(percent: 1, attributes: [])
            ],
            categoryPoints: .fixed(.init(categoryPoints: [
                SpendCategory.travel.id: [
                    .init(percent: 4, attributes: [.caveat("United purchases only")]),
                    .init(percent: 2, attributes: [])
                ],
                SpendCategory.dining.id: [
                    .init(percent: 2, attributes: []),
                ],
            ])),
            icon: .black
        ),
        Card(
            id: "blue-cash-everyday",
            name: "Blue Cash Everyday",
            issuer: .amex,
            basePoints: [.init(
                percent: 1,
                attributes: []
            )],
            categoryPoints: .fixed(
                .init(
                    categoryPoints: [
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
                    ]
                )
            ),
            redemptionMultiplier: nil,
            icon: .lightBlue
        ),
        Card(
            id: "platinum",
            name: "Platinum Card",
            issuer: .amex,
            basePoints: [.init(
                percent: 1,
                attributes: []
            )],
            categoryPoints: .fixed(
                .init(
                    categoryPoints: [
                        SpendCategory.hotels.id: [
                            .init(
                                percent: 5,
                                attributes: [
                                    .caveat("Booked on AmexTravel.com")
                                ]
                            ),
                        ],
                        SpendCategory.flights.id: [
                            .init(
                                percent: 5,
                                attributes: [
                                    .caveat("Booked directly with airlines or on AmexTravel.com")
                                ]
                            ),
                        ],
                    ]
                )
            ),
            redemptionMultiplier: nil,
            icon: .silver
        ),
        Card(
            id: "gold",
            name: "Gold Card",
            issuer: .amex,
            basePoints: [.init(
                percent: 1,
                attributes: []
            )],
            categoryPoints: .fixed(
                .init(
                    categoryPoints: [
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
                                    .caveat("Booked directly with airlines or on AmexTravel.com")
                                ]
                            ),
                        ],
                    ]
                )
            ),
            redemptionMultiplier: nil,
            icon: .gold
        ),
        Card(
            id: "apple-card",
            name: "Apple Card",
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
            ],
            categoryPoints: nil,
            redemptionMultiplier: nil,
            icon: .white
        ),
        Card(
            id: "double-cash",
            name: "Double Cash",
            issuer: .citi,
            basePoints: [
                .init(
                    percent: 2,
                    attributes: [.caveat("1% when you buy, 1% as you pay")]
                )
            ],
            categoryPoints: nil,
            redemptionMultiplier: nil,
            icon: .midBlue
        ),
        Card(
            id: "aadvantage-exec",
            name: "AA Executive",
            issuer: .citi,
            basePoints: [
                .init(
                    percent: 1,
                    attributes: []
                ),
            ],
            categoryPoints: .fixed(
                .init(
                    categoryPoints: [
                        SpendCategory.hotels.id: [
                            .init(
                                percent: 10,
                                attributes: [
                                    .caveat("Booked through aa.com/hotels")
                                ]
                            )
                        ],
                        SpendCategory.carRentals.id: [
                            .init(
                                percent: 10,
                                attributes: [
                                    .caveat("Booked through aa.com/cars")
                                ]
                            )
                        ],
                    ]
                )
            ),
            redemptionMultiplier: nil,
            icon: .black
        ),
    ]
}
