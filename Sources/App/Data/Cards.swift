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
        let cards = [
            Card(
                id: "amex-everyday-preferred",
                name: "EveryDay Preferred",
                icon: .white,
                issuer: .amex,
                basePoints: [.init(multiplier: 1)],
                categoryPoints: [
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
                ],
                network: .visa
            ),
            Card(
                id: "amazon-prime-store",
                name: "Prime Store Card",
                icon: .darkBlue,
                issuer: .amazon,
                categoryPoints: [
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
                    "goodbye": [.init(multiplier: 1)],
                    "subtitle": [.init(multiplier: 1)],
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
