//
//  ContentView.swift
//  WeatherModel
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var info = false
    @State private var searchText = ""
    
    let AsiaCitySearch = AsiaWeatherData
    let EuropeCitySearch = EuropeWeatherData
    
    var AsiasearchResults: [CityWeather] {
        if searchText.isEmpty {
            return AsiaCitySearch
        } else {
            return AsiaCitySearch.filter{$0.city.contains(searchText)}
        }
    }
    
    var EuropesearchResults: [CityWeather] {
        if searchText.isEmpty {
            return EuropeCitySearch
        } else {
            return EuropeCitySearch.filter{$0.city.contains(searchText)}
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Asia")) {
                    ForEach(AsiasearchResults, id: \.city) {asiacity in
                        NavigationLink {
                            WeatherCard(cityWeather: asiacity)
                        }label: {
                            Text(asiacity.city)
                        }}
                }
                Section(header: Text("Asia")) {
                    ForEach(EuropesearchResults, id: \.city) {europecity in
                        NavigationLink {
                            WeatherCard(cityWeather: europecity)
                        }label: {
                            Text(europecity.city)
                        }}
                }
            }
            .navigationTitle("Cities")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action:{
                        info = true
                    }) {
                        Image(systemName: "info.circle")
                    }
                }
            }
            .searchable(text: $searchText)
        }.sheet(isPresented: $info){
            Text("This app created by Lee Zheng Jie")
                .presentationDetents([.height(200)])
        }
    }
}

#Preview {
    ContentView()
}
