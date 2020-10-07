//
//  Order.swift
//  avoorder
//
//  Created by Marvin Messenzehl on 07.10.20.
//

import Foundation

let defaultOrder = Order(includeSalt: true, includeRedPepperFlakes: true, quantity: 1, date: Date())

struct Order {
    var includeSalt: Bool
    var includeRedPepperFlakes: Bool
    var quantity: Int
    var date: Date
}
