//
//  DrinkView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct DrinkView: View {
    @Query(filter: #Predicate<MenuItem> {item in item.type == "Drink"}, sort: \MenuItem.name) var drinkItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext
    
    @State private var searchText = ""
    
    private var filterDrinkItem: [MenuItem] {
        if searchText.isEmpty {
            return drinkItems
        } else {
            return drinkItems.filter {$0.name
                .contains(searchText)}
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filterDrinkItem) {item in MenuItemView(item: item)
                }
            }
            
            .onAppear{
                if drinkItems.isEmpty {
                    preloadMenuItems()
                }
            }
        }
        .searchable(text: $searchText)
    }
    
    private func preloadMenuItems() {
        let sampleDrinks: [(name:String, image:String, price: Double)] = [
            ("All Natural Lemonade", "AllNaturalLemonade",7.5),
            ("Blueberry Pomegranate Lemonade", "BlueberryPomegranateLemonade",7.5),
            ("Brewed Unsweetened Iced Tea", "BrewedUnsweetenedIcedTea",7.5),
            ("Classic Chocolate Frosty", "ClassicChocolateFrosty",13.5),
            ("Coca Cola", "CocaCola",6),
            ("Cold Brew", "ColdBrew",8.5),
            ("Fanta Orange", "FantaOrange",6.5),
            ("Sprite", "Sprite",6),
            ("Strawberry Lemonade", "StrawberryLemonade",7.5),
            ("Vanilla Frosty", "VanillaFrosty",13.5)
        ]
        
        for drink in sampleDrinks {
            let newItem = MenuItem(name: drink.name, type: "Drink", image: drink.image, price: drink.price)
            modelContext.insert(newItem)
        }
        try?modelContext.save()
    }
}


#Preview {
    DrinkView()
        .modelContainer(for:MenuItem.self, inMemory: true)
}
