//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/5/24.
//

import HakoShared

extension Issuer {
    static let chase = Issuer(
        id: ID(rawValue: "chase"),
        name: "Chase"
    )

    static let amex = Issuer(
        id: ID(rawValue: "amex"),
        name: "American Express"
    )

    static let apple = Issuer(
        id: ID(rawValue: "apple"),
        name: "Apple"
    )

    static let citi = Issuer(
        id: ID(rawValue: "citi"),
        name: "Citi"
    )
}
