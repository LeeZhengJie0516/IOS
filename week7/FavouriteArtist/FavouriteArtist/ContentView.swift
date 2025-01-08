//
//  ContentView.swift
//  FavouriteArtist
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack  {
                    Spacer()
                    Image(systemName: "bell.fill")
                        .ignoresSafeArea()
                    Image(systemName: "person.fill")
                        .ignoresSafeArea()
                }
                Spacer()
                VStack {
                    Text("Favourite Artists")
                        .font(.title)
                        .bold()
                        .padding(.leading, -140)
                    
                    ZStack {
                        Color.color1
                            .cornerRadius(15)
                            .overlay(
                                HStack {
                                    Text("Kenshi Yonezu")
                                        .bold()
                                        .font(.title2)
                                        .padding(.top, 120)
                                        .padding(.leading, 10)
                                        .foregroundStyle(.fontcolor)
                                    Image("yonezu")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 160, height: 160)
                                }
                            )
                    }
                    
                    HStack {
                        Color.color2
                            .cornerRadius(15)
                            .overlay(
                                HStack {
                                    Text("Chrissy Costanza")
                                        .bold()
                                        .font(.title2)
                                        .multilineTextAlignment(.trailing)
                                        .padding(.trailing, -40)
                                        .padding(.top, 120)
                                        .foregroundStyle(.fontcolor)
                                    Image("chrissy")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 160, height: 160)
                                }
                            )
                    }
                    
                    HStack {
                        Color.color3
                            .cornerRadius(15)
                            .overlay(
                                HStack {
                                    Text("Hikaru Utada")
                                        .bold()
                                        .font(.title2)
                                        .multilineTextAlignment(.trailing)
                                        .padding(.trailing, 0)
                                        .padding(.top, 120)
                                        .foregroundStyle(.fontcolor)
                                    Image("utada")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 160, height: 160)
                                }
                            )
                    }
                    
                    HStack {
                        Color.color4
                            .cornerRadius(15)
                            .overlay(
                                HStack {
                                    Text("Hozier")
                                        .bold()
                                        .font(.title2)
                                        .multilineTextAlignment(.trailing)
                                        .padding(.trailing, 70)
                                        .padding(.top, 120)
                                        .foregroundStyle(.fontcolor)
                                    Image("hozier")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 160, height: 160)
                                }
                            )
                    }
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
