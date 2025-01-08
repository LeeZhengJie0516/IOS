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
                    Spacer()
                    HStack {

                        ZStack {
                            VStack {
                                Spacer()
                                Text("View")
                                    .bold()
                                    .background(.white)
                                    .padding(.trailing, 20)
                                    .padding(.bottom, 10)
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
    ArtistCard(bg:"color1", name: "Kenshi Yonezu", artist: "yonezu", button: "color2")
}
