//
//  WeatherList.swift
//  WeatherModel
//
//  Created by labuser on 22/01/2025.
//

import Foundation

struct CityWeather{
    let city:String
    let weather:[Weather]
}

struct Weather: Identifiable {
    let id = UUID()
    let day:String
    let temperature:String
    let icon:String
}

let AsiaWeatherData: [CityWeather] = [
    CityWeather(
        city:"Seoul",
        weather: [
            Weather(day: "Monday", temperature: "8", icon: "windy"),
            Weather(day: "Tuesday", temperature: "9", icon: "sunny")
        ]
    ),
    CityWeather(
        city:"Taipei",
        weather: [
            Weather(day: "Monday", temperature: "8", icon: "windy"),
            Weather(day: "Tuesday", temperature: "9", icon: "sunny")
        ]
    ),
    CityWeather(
        city:"Tokyo",
        weather: [
            Weather(day: "Monday", temperature: "8", icon: "windy"),
            Weather(day: "Tuesday", temperature: "9", icon: "sunny")
        ]
    )
]

let EuropeWeatherData: [CityWeather] = [
    CityWeather(
        city:"Warsaw",
        weather: [
            Weather(day: "Monday", temperature: "8", icon: "windy"),
            Weather(day: "Tuesday", temperature: "9", icon: "sunny")
        ]
    ),
    CityWeather(
        city:"London",
        weather: [
            Weather(day: "Monday", temperature: "8", icon: "windy"),
            Weather(day: "Tuesday", temperature: "9", icon: "sunny")
        ]
    )
]
