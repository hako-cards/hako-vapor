//
//  File.swift
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
    }

    func cards(req: Request) -> CardsResponse {
        CardsResponse(cards: cards)
    }

    func categories(req: Request) -> SpendCategoriesResponse {
        SpendCategoriesResponse(categories: SpendCategory.all)
    }
}
