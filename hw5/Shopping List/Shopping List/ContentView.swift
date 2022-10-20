//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    var fruitList = [
        ShoppingListItem(imageName: "banana", name: "Bananas", quantity: 3),
        ShoppingListItem(imageName: "apple", name: "Apples", quantity: 4),
        ShoppingListItem(imageName: "eggs", name: "Eggs", quantity: 12)
    ]
    
    var vegetableList = [
        ShoppingListItem(imageName: "carrot", name: "Carrots", quantity: 2),
        ShoppingListItem(imageName: "lettuce", name: "Lettuce", quantity: 1),
        ShoppingListItem(imageName: "pepper", name: "Bell Pepper", quantity: 2)
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruitList) { i in
                        CustomCell(imageName: i.imageName, itemName: i.name, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Vegetables")) {
                    ForEach(vegetableList) { i in
                        CustomCell(imageName: i.imageName, itemName: i.name, quantity: i.quantity)
                    }
                }
            }
            .navigationTitle("Shopping List")
        }
    }
}
