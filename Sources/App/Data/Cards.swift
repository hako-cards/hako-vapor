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
                                .info("At U.S. supermarkets"),
                                .info("On up to $6,000 per year"),
                            ]
                        ),
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            multiplier: 2,
                            attributes: [
                                .info("At U.S. gas stations"),
                            ]
                        ),
                    ],
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
                    SpendCategory.mcDonalds.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.info(
                                "On up to $1,500"
                            )],
                            kind: .Q42024(activateBy: (12, 14))
                        ),
                    ],
                    SpendCategory.paypal.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.info(
                                "On up to $1,500"
                            )],
                            kind: .Q42024(activateBy: (12, 14))
                        ),
                    ],
                    SpendCategory.petShopsAndServices.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.info("On up to $1,500")],
                            kind: .Q42024(activateBy: (12, 14))
                        ),
                    ],
                    SpendCategory.charities.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.info("On up to $1,500")],
                            kind: .Q42024(activateBy: (12, 14))
                        ),
                    ],
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .info("On up to $1,500"),
                                .caveat("Excluding Walmart & Target"),
                            ],
                            kind: .Q12025Chase()
                        ),
                    ],
                    SpendCategory.gymMembership.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .info("On up to $1,500"),
                            ],
                            kind: .Q12025Chase()
                        ),
                    ],
                    SpendCategory.hairNailSpa.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .info("On up to $1,500"),
                            ],
                            kind: .Q12025Chase()
                        ),
                    ],
                    SpendCategory.norwegianCruise.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .info("On up to $1,500"),
                            ],
                            kind: .Q12025Chase()
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
                    multiplier: 1
                )],
                categoryPoints: [
                    SpendCategory.travel.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
                    SpendCategory.drugstores.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.dining.id: [
                        .init(
                            multiplier: 3
                        ),
                    ],
                    SpendCategory.mcDonalds.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.info(
                                "On up to $1,500"
                            )],
                            kind: .Q42024(activateBy: (12, 14))
                        ),
                    ],
                    SpendCategory.paypal.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.info(
                                "On up to $1,500"
                            )],
                            kind: .Q42024(activateBy: (12, 14))
                        ),
                    ],
                    SpendCategory.petShopsAndServices.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.info("On up to $1,500")],
                            kind: .Q42024(activateBy: (12, 14))
                        ),
                    ],
                    SpendCategory.charities.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.info("On up to $1,500")],
                            kind: .Q42024(activateBy: (12, 14))
                        ),
                    ],
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .info("On up to $1,500"),
                                .caveat("Excluding Walmart & Target"),
                            ],
                            kind: .Q12025Chase()
                        ),
                    ],
                    SpendCategory.gymMembership.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .info("On up to $1,500"),
                            ],
                            kind: .Q12025Chase()
                        ),
                    ],
                    SpendCategory.hairNailSpa.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .info("On up to $1,500"),
                            ],
                            kind: .Q12025Chase()
                        ),
                    ],
                    SpendCategory.norwegianCruise.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .info("On up to $1,500"),
                            ],
                            kind: .Q12025Chase()
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
                    SpendCategory.travel.id: [
                        .init(
                            multiplier: 5,
                            attributes: [.caveat(
                                "Booked through Chase Ultimate Rewards"
                            )]
                        ),
                    ],
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
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                    SpendCategory.streaming.id: [.init(multiplier: 3, attributes: [.caveat("On select services")])],
                    SpendCategory.onlineGroceries.id: [.init(multiplier: 3, attributes: [.caveat("Excluding Target, Walmart and wholesale clubs")])],
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
                        multiplier: 1
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
                id: "united-quest",
                name: "United Quest",
                icon: .purple,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.united.id: [.init(multiplier: 3, attributes: [.caveat("After earning your $125 annual United purchase credit")])],
                    SpendCategory.travel.id: [.init(multiplier: 2)],
                    SpendCategory.dining.id: [.init(multiplier: 2, attributes: [.info("Including eligible delivery services")])],
                    SpendCategory.streaming.id: [.init(multiplier: 2, attributes: [.caveat("On select services")])],
                ],
                network: .visa
            ),
            Card(
                id: "blue-cash-everyday",
                name: "Blue Cash Everyday",
                icon: .lightBlue,
                issuer: .amex,
                basePoints: [.init(
                    multiplier: 1
                )],
                categoryPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 3,
                            attributes: [
                                .info("At U.S. supermarkets"),
                                .info("On up to $6,000 per year"),
                            ]
                        ),
                    ],
                    SpendCategory.gas.id: [
                        .init(
                            multiplier: 3,
                            attributes: [.info("On up to $6,000 per year")]
                        ),
                    ],
                    SpendCategory.online.id: [
                        .init(
                            multiplier: 3,
                            attributes: [.info("On up to $6,000 per year")]
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
                    multiplier: 1
                )],
                categoryPoints: [
                    SpendCategory.groceries.id: [
                        .init(
                            multiplier: 6,
                            attributes: [
                                .info("At U.S. supermarkets"),
                                .info("On up to $6,000 per year"),
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
                    multiplier: 1
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
                    multiplier: 1
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
                            multiplier: 3,
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
                        multiplier: 1
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
                name: "AAdvantage Executive",
                icon: .black,
                issuer: .citi,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.americanAirlines.id: [
                        .init(multiplier: 4),
                    ],
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
                    multiplier: 1
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
                    multiplier: 1
                )],
                categoryPoints: [
                    SpendCategory.delta.id: [.init(
                        multiplier: 2
                    )],
                    SpendCategory.dining.id: [.init(
                        multiplier: 2
                    )],
                    SpendCategory.groceries.id: [.init(
                        multiplier: 2
                    )],
                ],
                network: .amex
            ),
            Card(
                id: "skymiles-blue",
                name: "Delta SkyMiles Blue",
                icon: .lightBlue,
                issuer: .amex,
                basePoints: [.init(
                    multiplier: 1
                )],
                categoryPoints: [
                    SpendCategory.delta.id: [.init(
                        multiplier: 2
                    )],
                    SpendCategory.dining.id: [.init(
                        multiplier: 2
                    )],
                ],
                network: .amex
            ),
            Card(
                id: "skymiles-reserve",
                name: "Delta SkyMiles Reserve",
                icon: .purple,
                issuer: .amex,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.delta.id: [.init(multiplier: 3)],
                ],
                network: .amex
            ),
            Card(
                id: "prime-visa",
                name: "Prime Visa",
                icon: .darkBlue,
                issuer: .chase,
                basePoints: [.init(
                    multiplier: 1
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
                        multiplier: 2
                    )],
                    SpendCategory.transit.id: [.init(
                        multiplier: 2
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
                    multiplier: 1
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
                        multiplier: 2
                    )],
                    SpendCategory.transit.id: [.init(
                        multiplier: 2
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
                    multiplier: 1
                )],
                categoryPoints: [
                    SpendCategory.amazon.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .info("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q42024()
                    )],
                    SpendCategory.target.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .info("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q42024()
                    )],
                    SpendCategory.homeImprovement.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .info("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q12025()
                    )],
                    SpendCategory.dining.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .info("On up to $1,500"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q12025()
                    )],
                    SpendCategory.streaming.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .info("On up to $1,500"),
                            .caveat("On select services"),
                            .caveat("Must be activated"),
                        ],
                        kind: .Q12025()
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
                    SpendCategory.dining.id: [.init(multiplier: 2, attributes: [.info("On up to $1,000")])],
                    SpendCategory.gas.id: [.init(multiplier: 2, attributes: [.info("On up to $1,000")])],
                ],
                network: .discover
            ),
            Card(
                id: "discover-it-miles",
                name: "Discover it Miles",
                icon: .midBlue,
                issuer: .discover,
                basePoints: [.init(
                    multiplier: 1.5, attributes: [.info("2× Miles your first year with Discover Match")]
                )],
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
                id: "quicksilver",
                name: "Quicksilver",
                icon: .lightGray,
                issuer: .capitalOne,
                basePoints: [.init(multiplier: 1.5)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                    SpendCategory.carRentals.id: [.init(multiplier: 5, attributes: [.caveat("Booked through Capital One Travel")])],
                ],
                network: .mastercard
            ),
            Card(
                id: "altitude-connect",
                name: "Altitude Connect",
                icon: .lightBlue,
                issuer: .usBank,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.dining.id: [.init(multiplier: 2)],
                    SpendCategory.streaming.id: [.init(multiplier: 2)],
                    SpendCategory.groceries.id: [.init(multiplier: 2)],
                    SpendCategory.travel.id: [.init(multiplier: 4)],
                    SpendCategory.hotels.id: [.init(multiplier: 5, attributes: [.caveat("Booked through the Altitude Rewards Center")])],
                    SpendCategory.carRentals.id: [.init(multiplier: 5, attributes: [.caveat("Booked through the Altitude Rewards Center")])],
                ],
                network: .mastercard
            ),
            Card(
                id: "ihg-rewards-club-select",
                name: "IHG Rewards Club Select",
                icon: .gray,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.hotels.id: [
                        .init(
                            multiplier: 15,
                            attributes: [
                                .caveat("With an IHG Rewards membership"),
                                .caveat("At InterContinental Hotels & Resorts, Hualuxe Hotels, Crowne Plaza Hotels & Resorts, Hotel Indigo and the Holiday Inn "),
                            ]
                        ),
                        .init(
                            multiplier: 5,
                            attributes: [
                                .caveat("At IHG hotels and resorts"),
                            ]
                        ),
                    ],
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
                            attributes: [.caveat("On eligible purchases at hotels participating in the Marriott Bonvoy program")]
                        ),
                    ],
                    SpendCategory.dining.id: [
                        .init(multiplier: 4),
                    ],
                    SpendCategory.gas.id: [
                        .init(multiplier: 4),
                    ],
                    SpendCategory.phoneBill.id: [
                        .init(multiplier: 4, attributes: [.caveat("Purchased directly from U.S. service providers ")]),
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
                        .init(multiplier: 4, attributes: [.info("On your top 2 eligible categories")]),
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
                                .info("At U.S. supermarkets"),
                                .info("On up to $6,000 per year"),
                            ]
                        ),
                    ],
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
                        .init(multiplier: 5, attributes: [.info("At U.S. gas stations")]),
                    ],
                    SpendCategory.groceries.id: [
                        .init(multiplier: 5, attributes: [.info("At U.S. supermarkets")]),
                    ],
                    SpendCategory.dining.id: [
                        .init(multiplier: 5, attributes: [.info("At U.S. restaurants, including takeout and delivery")]),
                    ],
                    SpendCategory.hotels.id: [
                        .init(multiplier: 7, attributes: [.caveat("For eligible purchases at hotels and resorts in the Hilton portfolio")]),
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
                        .init(multiplier: 2, attributes: [.caveat("On eligible American Airlines purchases")]),
                    ],
                ],
                network: .mastercard
            ),
            Card(
                id: "barclay-jetblue",
                name: "JetBlue Card",
                icon: .midBlue,
                issuer: .barclays,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.flights.id: [.init(multiplier: 3, attributes: [.caveat("On eligible JetBlue purchases")])],
                    SpendCategory.dining.id: [.init(multiplier: 2)],
                    SpendCategory.groceries.id: [.init(multiplier: 2)],
                ],
                network: .mastercard
            ),
            Card(
                id: "alaska-airlines",
                name: "Alaska Airlines",
                icon: .darkBlue,
                issuer: .bofa,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.alaska.id: [.init(multiplier: 3)],
                    SpendCategory.gas.id: [.init(multiplier: 2)],
                    SpendCategory.evCharging.id: [.init(multiplier: 2)],
                    SpendCategory.streaming.id: [.init(multiplier: 2)],
                    SpendCategory.transit.id: [.init(multiplier: 2, attributes: [.info("Including rideshare")])],
                ],
                network: .visa
            ),
            Card(
                id: "citi-rewards-plus",
                name: "Citi Rewards+",
                icon: .gray,
                issuer: .citi,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.groceries.id: [
                        .init(multiplier: 2, attributes: [
                            .info("On up to $6,000 per year"),
                        ]),
                    ],
                    SpendCategory.gas.id: [
                        .init(multiplier: 2, attributes: [
                            .info("On up to $6,000 per year"),
                        ]),
                    ],
                ],
                network: .mastercard
            ),
            Card(
                id: "citi-premier",
                name: "Citi Premier",
                icon: .gray,
                issuer: .citi,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                    SpendCategory.groceries.id: [.init(multiplier: 3)],
                    SpendCategory.gas.id: [.init(multiplier: 3)],
                    SpendCategory.flights.id: [.init(multiplier: 3)],
                ],
                network: .mastercard
            ),
            Card(
                id: "sw-rr-plus",
                name: "Southwest Rapid Rewards Plus",
                icon: .lightGray,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.southwest.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.hotels.id: [
                        .init(multiplier: 2, attributes: [.caveat("With Rapid Rewards hotel partners")]),
                    ],
                    SpendCategory.carRentals.id: [
                        .init(multiplier: 2, attributes: [.caveat("With Rapid Rewards car rental partners")]),
                    ],
                    SpendCategory.transit.id: [
                        .init(multiplier: 2, attributes: [.info("Including rideshare")]),
                    ],
                    SpendCategory.phoneBill.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.internet.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.streaming.id: [
                        .init(multiplier: 2, attributes: [.caveat("On select services")]),
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "sw-rr-priority",
                name: "Southwest Rapid Rewards Priority",
                icon: .darkBlue,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.southwest.id: [
                        .init(multiplier: 3),
                    ],
                    SpendCategory.hotels.id: [
                        .init(multiplier: 2, attributes: [.caveat("With Rapid Rewards hotel partners")]),
                    ],
                    SpendCategory.carRentals.id: [
                        .init(multiplier: 2, attributes: [.caveat("With Rapid Rewards car rental partners")]),
                    ],
                    SpendCategory.transit.id: [
                        .init(multiplier: 2, attributes: [.info("Including rideshare")]),
                    ],
                    SpendCategory.phoneBill.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.internet.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.streaming.id: [
                        .init(multiplier: 2, attributes: [.caveat("On select services")]),
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "sw-rr-premier",
                name: "Southwest Rapid Rewards Premier",
                icon: .darkBlue,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.southwest.id: [
                        .init(multiplier: 3),
                    ],
                    SpendCategory.hotels.id: [
                        .init(multiplier: 2, attributes: [.caveat("With Rapid Rewards hotel partners")]),
                    ],
                    SpendCategory.carRentals.id: [
                        .init(multiplier: 2, attributes: [.caveat("With Rapid Rewards car rental partners")]),
                    ],
                    SpendCategory.transit.id: [
                        .init(multiplier: 2, attributes: [.info("Including rideshare")]),
                    ],
                    SpendCategory.phoneBill.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.internet.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.streaming.id: [
                        .init(multiplier: 2, attributes: [.caveat("On select services")]),
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "sw-rr-perf-bus",
                name: "Southwest Rapid Performance Business",
                icon: .black,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.southwest.id: [
                        .init(multiplier: 4),
                    ],
                    SpendCategory.hotels.id: [
                        .init(multiplier: 3, attributes: [.caveat("With Rapid Rewards hotel partners")]),
                    ],
                    SpendCategory.carRentals.id: [
                        .init(multiplier: 3, attributes: [.caveat("With Rapid Rewards car rental partners")]),
                    ],
                    SpendCategory.transit.id: [
                        .init(multiplier: 2, attributes: [.info("Including rideshare")]),
                    ],
                    SpendCategory.advertising.id: [
                        .init(multiplier: 2, attributes: [.caveat("On social media and search engines")]),
                    ],
                    SpendCategory.phoneBill.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.internet.id: [
                        .init(multiplier: 2),
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "sw-rr-prem-bus",
                name: "Southwest Rapid Premier Business",
                icon: .black,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.southwest.id: [
                        .init(multiplier: 3),
                    ],
                    SpendCategory.hotels.id: [
                        .init(multiplier: 2, attributes: [.caveat("With Rapid Rewards hotel partners")]),
                    ],
                    SpendCategory.carRentals.id: [
                        .init(multiplier: 2, attributes: [.caveat("With Rapid Rewards car rental partners")]),
                    ],
                    SpendCategory.transit.id: [
                        .init(multiplier: 2, attributes: [.info("Including rideshare")]),
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "amex-cobalt",
                name: "Cobalt Card (Canada)",
                icon: .gray,
                issuer: .amex,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.dining.id: [
                        .init(multiplier: 5, attributes: [.info("On eligible restaurants or food delivery in Canada")]),
                    ],
                    SpendCategory.groceries.id: [
                        .init(multiplier: 5, attributes: [.info("At stand-alone grocery stores in Canada")]),
                    ],
                    SpendCategory.streaming.id: [
                        .init(multiplier: 3, attributes: [.caveat("For eligible streaming subscriptions in Canada")]),
                    ],
                    SpendCategory.travel.id: [
                        .init(multiplier: 2),
                    ],
                    SpendCategory.transit.id: [
                        .init(multiplier: 2, attributes: [.info("Including rideshare")]),
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "amex-bonvoy",
                name: "Marriott Bonvoy (Canada)",
                icon: .lightGray,
                issuer: .amex,
                basePoints: [.init(multiplier: 2)],
                categoryPoints: [
                    SpendCategory.hotels.id: [
                        .init(multiplier: 5, attributes: [.caveat("On eligible purchases at participating Marriott Bonvoy hotels")]),
                    ],
                ],
                network: .amex
            ),
            Card(
                id: "td-aeroplan",
                name: "Aeroplan (Canada)",
                icon: .gray,
                issuer: .td,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.airCanada.id: [
                        .init(multiplier: 1.5, attributes: [.info("Including Air Canada Vacations")]),
                    ],
                    SpendCategory.starbucks.id: [
                        .init(multiplier: 1.5, attributes: [.caveat("When you link your card with your Starbucks Rewards account")]),
                    ],
                    SpendCategory.gas.id: [
                        .init(multiplier: 1.5),
                    ],
                    SpendCategory.groceries.id: [
                        .init(multiplier: 1.5),
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "td-cash",
                name: "TD Cash",
                icon: .green,
                issuer: .td,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.chosenCategories.id: [
                        .init(multiplier: 3, attributes: [.info("Choose from Dining, Entertainment, Gas, Groceries, or Travel each quarter")]),
                        .init(multiplier: 2, attributes: [.info("Choose from Dining, Entertainment, Gas, Groceries, or Travel each quarter")]),
                    ]
                ],
                network: .visa
            ),
            Card(
                id: "ink-bus-premier",
                name: "Ink Business Premier",
                icon: .black,
                issuer: .chase,
                basePoints: [
                    .init(multiplier: 2.5, attributes: [.caveat("On purchases of $5,000 or more")]),
                    .init(multiplier: 2),
                ],
                categoryPoints: [
                    SpendCategory.lyft.id: [.init(multiplier: 5, attributes: [.info("Through March 2025")])]
                ],
                canCombinePoints: true,
                network: .visa
            ),
            Card(
                id: "ink-bus-unlimited",
                name: "Ink Business Unlimited",
                icon: .gray,
                issuer: .chase,
                basePoints: [
                    .init(multiplier: 1.5),
                ],
                categoryPoints: [
                    SpendCategory.lyft.id: [.init(multiplier: 5, attributes: [.info("Through March 2025")])]
                ],
                canCombinePoints: true,
                network: .visa
            ),
            Card(
                id: "ink-bus-cash",
                name: "Ink Business Cash",
                icon: .lightGray,
                issuer: .chase,
                basePoints: [
                    .init(multiplier: 1),
                ],
                categoryPoints: [
                    SpendCategory.officeSupply.id: [.init(multiplier: 5, attributes: [.info("On the first $25,000 each year")])],
                    SpendCategory.internet.id: [.init(multiplier: 5, attributes: [.info("On the first $25,000 each year")])],
                    SpendCategory.phoneBill.id: [.init(multiplier: 5, attributes: [.info("On the first $25,000 each year")])],
                    SpendCategory.gas.id: [.init(multiplier: 2, attributes: [.info("On the first $25,000 each year")])],
                    SpendCategory.dining.id: [.init(multiplier: 2, attributes: [.info("On the first $25,000 each year")])],
                    SpendCategory.lyft.id: [.init(multiplier: 5, attributes: [.info("Through March 2025")])]
                ],
                canCombinePoints: true,
                network: .visa
            ),
            Card(
                id: "ink-bus-preferred",
                name: "Ink Business Preferred",
                icon: .darkBlue,
                issuer: .chase,
                basePoints: [
                    .init(multiplier: 1),
                ],
                categoryPoints: [
                    SpendCategory.advertising.id: [.init(
                        multiplier: 3,
                        attributes: [
                            .caveat("On social media and search engines"),
                            .info("On the first $150,000 each year"),
                        ]
                    )],
                    SpendCategory.internet.id: [.init(multiplier: 3, attributes: [.info("On the first $150,000 each year")])],
                    SpendCategory.phoneBill.id: [.init(multiplier: 3, attributes: [.info("On the first $150,000 each year")])],
                    SpendCategory.travel.id: [.init(multiplier: 3, attributes: [.info("On the first $150,000 each year")])],
                    SpendCategory.shipping.id: [.init(multiplier: 3, attributes: [.info("On the first $150,000 each year")])],
                    SpendCategory.lyft.id: [.init(multiplier: 5, attributes: [.info("Through March 2025")])]
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
                id: "blue-bus-plus",
                name: "Blue Business Plus",
                icon: .midBlue,
                issuer: .amex,
                basePoints: [
                    .init(multiplier: 2, attributes: [.caveat("On the first $50,000 each year")]),
                    .init(multiplier: 1),
                ],
                network: .amex
            ),
            Card(
                id: "citi-custom-cash",
                name: "Custom Cash",
                icon: .lightBlue,
                issuer: .citi,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.yourTopCategories.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .caveat("On up to $500 each billing cycle"),
                                .caveat("On one eligible category")
                            ]
                        )
                    ]
                ],
                network: .mastercard
            ),
            Card(
                id: "gemini",
                name: "Gemini",
                icon: .black,
                issuer: .gemini,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.gas.id: [.init(multiplier: 4, attributes: [.caveat("On up to $200 in spend per month")])],
                    SpendCategory.evCharging.id: [.init(multiplier: 4, attributes: [.caveat("On up to $200 in spend per month")])],
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                    SpendCategory.groceries.id: [.init(multiplier: 2)],
                ],
                network: .mastercard
            ),
            Card(
                id: "bofa-customized-cash",
                name: "Customized Cash Rewards",
                icon: .red,
                issuer: .bofa,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.chosenCategories.id: [.init(
                        multiplier: 3,
                        attributes: [
                            .info("One one category of your choice"),
                            .caveat("On the first $2,500 each quarter")
                        ]
                    )],
                    SpendCategory.groceries.id: [.init(multiplier: 2)],
                    SpendCategory.wholesaleClubs.id: [.init(multiplier: 2)],
                ],
                network: .visa
            ),
            Card(
                id: "verizon",
                name: "Verizon Visa Card",
                icon: .black,
                issuer: .synchrony,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.groceries.id: [.init(multiplier: 4)],
                    SpendCategory.gas.id: [.init(multiplier: 4)],
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                    SpendCategory.verizon.id: [.init(multiplier: 2)],
                ],
                network: .visa
            ),
            Card(
                id: "bofa-travel",
                name: "Travel Rewards",
                icon: .midBlue,
                issuer: .bofa,
                basePoints: [.init(multiplier: 1.5, attributes: [.info("Preferred Rewards members earn 25%-75% more")])],
                network: .visa
            ),
            Card(
                id: "pp",
                name: "PayPal Cashback",
                icon: .darkBlue,
                issuer: .paypal,
                basePoints: [
                    .init(multiplier: 3, attributes: [.caveat("When you checkout with PayPal")]),
                    .init(multiplier: 2),
                ],
                network: .mastercard
            ),
            Card(
                id: "red-visa-sig",
                name: "Redstone Visa Signature",
                icon: .black,
                issuer: .redstone,
                basePoints: [.init(multiplier: 1.5)],
                categoryPoints: [
                    SpendCategory.dining.id: [.init(multiplier: 5)],
                    SpendCategory.gas.id: [.init(multiplier: 5)],
                    SpendCategory.groceries.id: [.init(multiplier: 3)],
                    SpendCategory.wholesaleClubs.id: [.init(multiplier: 3)],
                    SpendCategory.discountStores.id: [.init(multiplier: 3)],
                    SpendCategory.utilities.id: [.init(multiplier: 3)],
                    SpendCategory.phoneBill.id: [.init(multiplier: 3)],
                    SpendCategory.streaming.id: [.init(multiplier: 3)],
                ],
                network: .visa
            ),
            Card(
                id: "us-b-c-plus",
                name: "Cash+",
                icon: .midBlue,
                issuer: .usBank,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.chosenCategories.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .caveat("On your first $2,000 each quarter"),
                                .caveat("On two categories you must activate"),
                            ]
                        ),
                        .init(
                            multiplier: 2,
                            attributes: [
                                .caveat("On one everyday category you must activate"),
                            ]
                        )
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "elan-max",
                name: "Max Cash Preferred",
                icon: .midBlue,
                issuer: .elan,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("Booked in the rewards center"),
                        ]
                    )],
                    SpendCategory.carRentals.id: [.init(
                        multiplier: 5,
                        attributes: [
                            .caveat("Booked in the rewards center"),
                        ]
                    )],
                    SpendCategory.chosenCategories.id: [
                        .init(
                            multiplier: 5,
                            attributes: [
                                .caveat("On your first $2,000 each quarter"),
                                .caveat("On two categories you choose"),
                            ]
                        ),
                        .init(
                            multiplier: 2,
                            attributes: [
                                .caveat("On one everyday category you choose"),
                            ]
                        )
                    ],
                ],
                network: .visa
            ),
            Card(
                id: "amazon-prime-store",
                name: "Prime Store Card",
                icon: .darkBlue,
                issuer: .amazon,
                categoryPoints: [
                    SpendCategory.amazon.id: [.init(multiplier: 5)]
                ],
                network: .visa
            ),
            Card(
                id: "eagle-nav",
                name: "Eagle Navigator",
                icon: .gray,
                issuer: .usaa,
                basePoints: [.init(multiplier: 2)],
                categoryPoints: [
                    SpendCategory.travel.id: [.init(multiplier: 3)]
                ],
                network: .visa
            ),
            Card(
                id: "usaa-rewards-amex",
                name: "Rewards American Express",
                icon: .darkBlue,
                issuer: .usaa,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                    SpendCategory.groceries.id: [.init(multiplier: 2)],
                    SpendCategory.gas.id: [.init(multiplier: 2)],
                ],
                network: .amex
            ),
            Card(
                id: "usaa-rewards-visa",
                name: "Rewards Visa Signature",
                icon: .darkBlue,
                issuer: .usaa,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.dining.id: [.init(multiplier: 2)],
                    SpendCategory.gas.id: [.init(multiplier: 2)],
                ],
                network: .visa
            ),
            Card(
                id: "usaa-cashback-plus",
                name: "Cashback Rewards Plus",
                icon: .darkBlue,
                issuer: .usaa,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.gas.id: [.init(multiplier: 5, attributes: [.caveat("On your first $3,000 yearly")])],
                    SpendCategory.militaryBase.id: [.init(multiplier: 5, attributes: [.caveat("On your first $3,000 yearly")])],
                    SpendCategory.groceries.id: [.init(multiplier: 2, attributes: [.caveat("On your first $3,000 yearly")])],
                ],
                network: .amex
            ),
            Card(
                id: "usaa-preferred-cash",
                name: "Preferred Cash Rewards",
                icon: .darkBlue,
                issuer: .usaa,
                basePoints: [.init(multiplier: 1.5)],
                network: .visa
            ),
            Card(
                id: "cap-walmart",
                name: "Walmart Rewards",
                icon: .darkBlue,
                issuer: .capitalOne,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.walmart.id: [
                        .init(multiplier: 5, attributes: [.caveat("At Walmart.com, including pickup and delivery")]),
                        .init(multiplier: 2, attributes: [.caveat("In Walmart stores")]),
                    ],
                    SpendCategory.travel.id: [.init(multiplier: 2)],
                    SpendCategory.dining.id: [.init(multiplier: 2)],
                ],
                network: .mastercard
            ),
            Card(
                id: "world-hyatt",
                name: "World of Hyatt",
                icon: .silver,
                issuer: .chase,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(multiplier: 4, attributes: [.caveat("On purchases at all Hyatt hotels")])],
                    SpendCategory.dining.id: [.init(multiplier: 2)],
                    SpendCategory.flights.id: [.init(multiplier: 2, attributes: [.caveat("Purchased directly from the airline")])],
                    SpendCategory.transit.id: [.init(multiplier: 2)],
                    SpendCategory.gymMembership.id: [.init(multiplier: 2)],
                ],
                network: .visa
            ),
            Card(
                id: "amex-green",
                name: "Green Card",
                icon: .green,
                issuer: .amex,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.travel.id: [.init(multiplier: 3)],
                    SpendCategory.transit.id: [.init(multiplier: 3)],
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                ],
                network: .amex
            ),
            Card(
                id: "wf-auto-journ",
                name: "Autograph Journey",
                icon: .red,
                issuer: .wellsFargo,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.hotels.id: [.init(multiplier: 5)],
                    SpendCategory.flights.id: [.init(multiplier: 5)],
                    SpendCategory.travel.id: [.init(multiplier: 3)],
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                ],
                network: .visa
            ),
            Card(
                id: "wf-auto",
                name: "Autograph",
                icon: .red,
                issuer: .wellsFargo,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    SpendCategory.transit.id: [.init(multiplier: 3)],
                    SpendCategory.gas.id: [.init(multiplier: 3)],
                    SpendCategory.travel.id: [.init(multiplier: 3)],
                    SpendCategory.dining.id: [.init(multiplier: 3)],
                    SpendCategory.streaming.id: [.init(multiplier: 3)],
                    SpendCategory.phoneBill.id: [.init(multiplier: 3)],
                ],
                network: .visa
            ),
        ].sorted {
            (
                $0.issuer.name,
                $0.name
            ) < (
                $1.issuer.name,
                $1.name
            )
        }

        guard cards.count == Set(cards.map(\.id)).count else {
            throw CardError.duplicateIDs
        }

        return cards
    }
}
