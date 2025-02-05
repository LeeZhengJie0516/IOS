//
//  FoodView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct FoodView: View {
    @Query(filter: #Predicate<MenuItem> {item in item.type == "Food"}, sort: \MenuItem.name) var foodItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext
    
    @State private var searchText = ""
    
    private var filterFoodItem: [MenuItem] {
        if searchText.isEmpty {
            return foodItems
        } else {
            return foodItems.filter {$0.name
                .contains(searchText)}
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filterFoodItem) {item in MenuItemView(item: item)
                }
            }
            
            .onAppear{
                if foodItems.isEmpty {
                    preloadMenuItems()
                }
            }
        }
        .searchable(text: $searchText)
    }
    
    private func preloadMenuItems() {
        let sampleFoods: [(name:String, image:String, price: Double)] = [
            ("Mushroom Bacon Cheeseburger", "MushroomBaconCheeseburger",10.5),
            ("Baconator", "Baconator",12.5),
            ("Bacon Double Stack", "BaconDoubleStack",13),
            ("Big Bacon Classic", "BigBaconClassic",13.5),
            ("Cinnabon Pull Apart", "CinnabonPullApart",7),
            ("CobbSalad", "CobbSalad",6.5),
            ("Dave Double", "DaveDouble",15),
            ("Dave Single", "DaveSingle",12.5),
            ("Dave Triple", "DaveTriple",16.5),
            ("Double Stack", "DoubleStack",11),
            ("Fresh Baked Oatmeal Bar", "FreshBakedOatmealBar",5),
            ("Grilled Chicken Ranch Wrap", "GrilledChickenRanchWrap",10),
            ("Jr Bacon Cheeseburger", "JrBaconCheeseburger",11.5),
            ("Jr Cheeseburger", "JrCheeseburger",9.5),
            ("Jr Hamburger", "JrHamburger",10.5),
            ("Parmesan Caeser Salad", "ParmesanCaeserSalad",8),
            ("Plain Baked Potato", "PlainBakedPotato",7.5),
            ("Small Natural Cut Fries", "SmallNaturalCutFries",6.5),
            ("Son Of Baconator", "SonOfBaconator",10.5),
            ("Spicy Nuggs Party Pack", "SpicyNuggsPartyPack",20)
        ]
        
        for food in sampleFoods {
            let newItem = MenuItem(name: food.name, type: "Food", image: food.image, price: food.price)
            modelContext.insert(newItem)
        }
        try?modelContext.save()
    }
}


#Preview {
    FoodView()
        .modelContainer(for:MenuItem.self, inMemory: true)
}
