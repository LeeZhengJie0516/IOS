//
//  WeatherCard.swift
//  WeatherModel
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct WeatherCard: View {
    var cityWeather: CityWeather
    @State private var bgStatus:Bool = false
    
    var body: some View {
        ZStack {

            if bgStatus == true {
                ZStack {
                    LinearGradient(gradient: Gradient(
                        colors: [.black, .white]),
                                   startPoint: .center,
                                   endPoint: .bottom
                    )
                    .ignoresSafeArea()
                }
            }
            else {
                ZStack {
                    LinearGradient(gradient: Gradient(
                        colors: [.blue, .cyan, .white]),
                                   startPoint: .top,
                                   endPoint: .bottom
                    )
                    .ignoresSafeArea()
                }
            }
            
            VStack {
                Text(cityWeather.city)
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(.top, 15)
                Image(systemName: cityWeather.bigIcon)
                    .resizable()
                    .foregroundStyle(.white, .yellow)
                    .padding(.top, 25)
                    .frame(width: 150, height: 165)
                    .shadow(radius: 10)
                Text(cityWeather.bigTemp)
                    .bold()
                    .font(.system(size: 80))
                    .foregroundStyle(.white)
                    .padding(.top, 15)
                
                    HStack {
                        ForEach(cityWeather.weather) {item in
                            VStack {
                                Spacer()
                                Text(item.day)
                                    .font(.system(size: 13))
                                    .foregroundStyle(.white)
                                    .padding(.top, 15)
                                    .bold()
                                Image(systemName: item.icon)
                                    .resizable()
                                    .foregroundStyle(.white, .yellow)
                                    .frame(width: 50, height: 45)
                                Text(item.temperature)
                                    .bold()
                                    .font(.system(size: 22))
                                    .foregroundStyle(.white)
                                    .padding(.top, 15)
                                Spacer()
                            }
                        }
                    }

                
                Spacer()
                HStack{
                    Button(action :{
                        bgStatus.toggle()
                    }) {
                        ZStack {
                            Color.white
                                .cornerRadius(10)
                                .frame(width: 280, height: 40)
                                .shadow(radius: 1)
                            Text("Change Day Time")
                                .foregroundStyle(.blue)
                                .bold()
                                .font(.system(size: 18))
                        }
                    }

                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
