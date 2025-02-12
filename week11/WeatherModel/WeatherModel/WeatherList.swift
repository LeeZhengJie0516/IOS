//
//  WeatherList.swift
//  WeatherModel
//
//  Created by labuser on 22/01/2025.
//

import Foundation

struct CityWeather{
    let city:String
    let bigIcon:String
    let bigTemp:String
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
        bigIcon:"sun.min.fill",
        bigTemp: "5°",
        weather: [
            Weather(day: "TUE", temperature: "3°", icon: "cloud.snow.fill"),
            Weather(day: "WED", temperature: "2°", icon: "cloud.snow.fill"),
            Weather(day: "THU", temperature: "4°", icon: "sun.max.fill"),
            Weather(day: "FRI", temperature: "8°", icon: "cloud.sun.fill"),
            Weather(day: "SAT", temperature: "9°", icon: "cloud.sun.fill"),
            Weather(day: "SUN", temperature: "7°", icon: "cloud.sun.fill")
        ]
    ),
    CityWeather(
        city:"Taipei",
        bigIcon:"cloud.sun.fill",
        bigTemp: "16°",
        weather: [
            Weather(day: "TUE", temperature: "19°", icon: "cloud.rain.fill"),
            Weather(day: "WED", temperature: "17°", icon: "cloud.rain.fill"),
            Weather(day: "THU", temperature: "18°", icon: "cloud.rain.fill"),
            Weather(day: "FRI", temperature: "15°", icon: "cloud.rain.fill"),
            Weather(day: "SAT", temperature: "14°", icon: "cloud.sun.fill"),
            Weather(day: "SUN", temperature: "18°", icon: "cloud.sun.fill")
        ]
    ),
    CityWeather(
        city:"Tokyo",
        bigIcon:"cloud.sun.fill",
        bigTemp: "10°",
        weather: [
            Weather(day: "TUE", temperature: "12°", icon: "cloud.sun.fill"),
            Weather(day: "WED", temperature: "12°", icon: "cloud.sun.fill"),
            Weather(day: "THU", temperature: "11°", icon: "sun.max.fill"),
            Weather(day: "FRI", temperature: "14°", icon: "sun.min.fill"),
            Weather(day: "SAT", temperature: "14°", icon: "cloud.sun.fill"),
            Weather(day: "SUN", temperature: "13°", icon: "cloud.fill")
        ]
    )
]

let EuropeWeatherData: [CityWeather] = [
    CityWeather(
        city:"Warsaw",
        bigIcon:"sun.min.fill",
        bigTemp: "1°",
        weather: [
            Weather(day: "TUE", temperature: "3°", icon: "cloud.sun.fill"),
            Weather(day: "WED", temperature: "3°", icon: "cloud.sun.fill"),
            Weather(day: "THU", temperature: "2°", icon: "cloud.fill"),
            Weather(day: "FRI", temperature: "0°", icon: "cloud.sun.fill"),
            Weather(day: "SAT", temperature: "0°", icon: "cloud.sun.fill"),
            Weather(day: "SUN", temperature: "-1°", icon: "cloud.snow.fill")
        ]
    ),
    CityWeather(
        city:"London",
        bigIcon:"cloud.sun.fill",
        bigTemp: "5°",
        weather: [
            Weather(day: "TUE", temperature: "6°", icon: "cloud.fill"),
            Weather(day: "WED", temperature: "5°", icon: "cloud.fill"),
            Weather(day: "THU", temperature: "4°", icon: "sun.max.fill"),
            Weather(day: "FRI", temperature: "6°", icon: "cloud.fill"),
            Weather(day: "SAT", temperature: "4°", icon: "cloud.fill"),
            Weather(day: "SUN", temperature: "2°", icon: "cloud.fill")
        ]
    ),
    CityWeather(
        city:"Paris",
        bigIcon:"sun.min.fill",
        bigTemp: "5°",
        weather: [
            Weather(day: "TUE", temperature: "6°", icon: "cloud.rain.fill"),
            Weather(day: "WED", temperature: "6°", icon: "cloud.rain.fill"),
            Weather(day: "THU", temperature: "5°", icon: "sun.max.fill"),
            Weather(day: "FRI", temperature: "4°", icon: "cloud.sun.fill"),
            Weather(day: "SAT", temperature: "6°", icon: "cloud.sun.fill"),
            Weather(day: "SUN", temperature: "7°", icon: "cloud.sun.fill")
        ]
    )
]
