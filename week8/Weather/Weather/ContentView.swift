//
//  ContentView.swift
//  Weather
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(
                colors: [.blue, .cyan, .white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text("Nagoya, Japan")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(.top, 15)
                
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .foregroundStyle(.white, .yellow)
                    .padding(.top, 25)
                    .frame(width: 180, height: 160)
                    .shadow(radius: 10)
                Text("7°")
                    .bold()
                    .font(.system(size: 80))
                    .foregroundStyle(.white)
                    .padding(.top, 15)
                    
            
                
                HStack {
                    
                    Spacer()
                    Day(day: "TUE", weather: "sun.max.fill", temp: "9°")
                    Spacer()
                    Day(day: "WED", weather: "sun.max.fill", temp: "10°")
                    Spacer()
                    Day(day: "THU", weather: "wind.snow", temp: "7°")
                    Spacer()
                    Day(day: "FRI", weather: "cloud.fill", temp: "9°")
                    Spacer()
                    Day(day: "SAT", weather: "snowflake", temp: "6°")
                    Spacer()
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

#Preview {
    ContentView()
}
