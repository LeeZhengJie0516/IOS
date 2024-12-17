//
//  ContentView.swift
//  Profile
//
//  Created by labuser on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack (alignment: .top){
            Image("background")
                .resizable()
                .frame(height: 200)
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea()
            
            VStack {
                Image("leezhengjie")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 6)
                    )
                    .padding(.all)
                    .frame(width: 250, height: 250)
                
                Text("Lee Zheng Jie")
                    .bold()
                    .font(.largeTitle)
                
                Text("SEDSC 2330244")
                    .bold()
                    .font(.title2)
                
                Text("ACSS is a digital agency company and website studio specializing in products, E-commerce, and SaaS website.")
                    .padding(.horizontal, 50)
                    .padding(.vertical, 30)
                
                Spacer()
                
                HStack {
                    Image("instagram")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Image("youtube")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Image("facebook")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Image("linkedln")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
