//
//  ShoppingListItem.swift
//  Shopping List
//
//  Created by Wesley Weisenberger on 10/20/22.
//

import Foundation

class ShoppingListItem: Identifiable {
    let imageName: String
    let name: String
    let quantity: Int
    
    init(imageName: String, name: String, quantity: Int) {
        self.imageName = imageName
        self.name = name
        self.quantity = quantity
    }
}
