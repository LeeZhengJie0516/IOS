//
//  ArtistCard.swift
//  FavouriteArtist
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ArtistCard: View {
    var bg:String
    var name: String
    var artist: String
    var button:String
    var link:String
    
    var body: some View {
        ZStack {
            Color(bg)
            
            Image(artist)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.leading, 200)

            VStack {
                
                HStack {
                    Text(name)
                        .bold()
                        .font(.title2)
                        .padding(.top, 120)
                        .padding(.leading, 10)
                        .foregroundStyle(.fontcolor)
                        .shadow(radius: 3)
                    Spacer()
                    HStack {

                        ZStack {
                            VStack {
                                Spacer()
                                Button(action: {
                                    if let url = URL(string: link) {
                                        UIApplication.shared.open(url)}
                                }) {
                                    HStack {
                                        Text("View")
                                            .padding(8)
                                            .bold()
                                            .foregroundColor(.black)
                                            .font(.system(size: 14))
                                        Image(systemName: "chevron.right")
                                            .padding(8)
                                            .padding(.leading, -15)
                                            .foregroundColor(.black)
                                    }
                                    .background(.white)
                                    .cornerRadius(5)
                                    .padding(.bottom, 10)
                                    .padding(.trailing, 20)
                                    .shadow(radius: 3)

                                }

                            }
                            
                        }
                    }
                }
            }
            Spacer()
                
        }.cornerRadius(15)
         .frame(height: 160)
         .padding()
    }
}


#Preview {
    ArtistCard(bg:"color1", name: "Kenshi Yonezu", artist: "yonezu", button: "color2", link: "https://www.google.com")
}
