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
                    
                    ScrollView {
                        ArtistCard(bg: "color1", name: "Yonezu Kenshi", artist: "yonezu", button: "color1")
                        ArtistCard(bg: "color2", name: "Chrissy Costanza", artist: "chrissy", button: "color2")
                        ArtistCard(bg: "color3", name: "Utada Hikaru", artist: "utada", button: "color3")
                        ArtistCard(bg: "color4", name: "Hozier", artist: "hozier", button: "color4")
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
