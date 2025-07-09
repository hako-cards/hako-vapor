//
//  Controller.swift
//
//
//  Created by Kyle Bashour on 3/5/24.
//

import HakoShared
import Vapor

struct Controller: RouteCollection {
    let cards: [Card]

    func boot(routes: Vapor.RoutesBuilder) throws {
        routes.get("cards", use: cards)
        routes.get("categories", use: categories)
        routes.get("version", use: version)
    }

    func cards(req: Request) -> CardsResponse {
        CardsResponse(cards: cards)
    }

    func categories(req: Request) -> SpendCategoriesResponse {
        SpendCategoriesResponse(
            categories: [
                SpendCategory(
                    id: "goodbye",
                    name: "Farewell 👋",
                    tint: .blue
                ),
                SpendCategory(
                    id: "subtitle",
                    name: "Hako has been discontinued",
                    tint: .blue,
                    parent: "goodbye"
                ),
            ]
        )
    }

    func version(req: Request) -> Version {
        Version(minimumBuild: 100)
    }
}
