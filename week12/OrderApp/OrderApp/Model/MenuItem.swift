//
//  MenuItem.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftData
import Foundation

@Model
class MenuItem: Identifiable {
    var id: UUID
    var name: String
    var image: String
    var type: String
    var price: Double
    var isAddedToOrder: Bool
    
    init(id: UUID = UUID(), name: String, type: String, image: String, price: Double, isAddedToOrder: Bool = false) {
        self.id = id
        self.name = name
        self.image = image
        self.type = type
        self.price = price
        self.isAddedToOrder = isAddedToOrder
    }
}
