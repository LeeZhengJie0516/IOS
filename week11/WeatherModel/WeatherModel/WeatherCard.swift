//
//  WeatherCard.swift
//  WeatherModel
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct WeatherCard: View {
    var cityWeather: CityWeather

    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(
                colors: [.blue, .cyan, .white]),
                           startPoint: .top,
                           endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text(cityWeather.city)
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(.top, 15)
                Image(systemName: cityWeather.city)
                    .resizable()
                    .foregroundStyle(.white, .yellow)
                    .padding(.top, 25)
                    .frame(width: 180, height: 160)
                    .shadow(radius: 10)
                Text("9")
                    .bold()
                    .font(.system(size: 80))
                    .foregroundStyle(.white)
                    .padding(.top, 15)
                
            
                    VStack {
                        ForEach(cityWeather.weather) {item in
                            Text(item.day)
                                .font(.system(size: 16))
                                .foregroundStyle(.white)
                                .padding(.top, 15)
                            Image(systemName: item.icon)
                                .resizable()
                                .foregroundStyle(.white, .yellow)
                                .padding(.top, 25)
                                .frame(width: 50, height: 70)
                            Text(item.temperature)
                                .bold()
                                .font(.system(size: 22))
                                .foregroundStyle(.white)
                                .padding(.top, 15)
                        }
                        
                    }
                
                Spacer()
                HStack{
                    ZStack {
                        Color.white
                            .cornerRadius(10)
                            .frame(width: 280, height: 40)
                        Text("Change Day Time")
                            .foregroundStyle(.blue)
                            .bold()
                            .font(.system(size: 18))
                    }
                }
                Spacer()
            }
        }
    }
}

