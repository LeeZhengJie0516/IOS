//
//  Day.swift
//  Weather
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct Day: View {
    var day:String
    var weather:String
    var temp:String
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 16))
                .foregroundStyle(.white)
                .padding(.top, 15)
            Image(systemName: weather)
                .resizable()
                .foregroundStyle(.white, .yellow)
                .padding(.top, 25)
                .frame(width: 50, height: 70)
            Text(temp)
                .bold()
                .font(.system(size: 22))
                .foregroundStyle(.white)
                .padding(.top, 15)

        }
    }
}

#Preview {
    Day(day: "MON", weather: "sun.min.fill", temp: "8°")
}
