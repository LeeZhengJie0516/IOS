//
//  ContentView.swift
//  FavouriteArtist
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedArtist: Artist? = nil
    
    var body: some View {
        Text("Artist")
            .bold()
            .font(.title2)
        List(Artists) {Artist in
            Button(action: {
                selectedArtist = Artist
            }) {
                Text(Artist.name)
                    .foregroundStyle(.blue)
            }
        }
        .sheet(item: $selectedArtist) { Artist in
            ZStack {
                Color(Artist.color)
                    .ignoresSafeArea(.all)
                VStack {
                    Image(Artist.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(20)
                        .shadow(radius: 3)
                    Text(Artist.name)
                        .bold()
                        .font(.title2)
                    Text(Artist.desc)
                        .padding(20)
                    Spacer()
                    
                    Button(action: {
                        if let url = URL(string: Artist.url) {
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
                        .shadow(radius: 3)
                }
                }
            }
            .presentationDetents([.medium, .large])
        }
    }
}


#Preview {
    ContentView()
}
