//
//  ContentView.swift
//  Input_validation
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    TextField("Required", text: $username)
                        .padding(8)
                        .font(.title)
                        .background(.white)
                        .cornerRadius(8)
                }
                .padding()
                .background(.gray)
                .padding()
            }
        }
        if username.count >= 5 {
            Text("Valid")
                .foregroundStyle(.green)
        }
        else {
            Text("Too short")
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    ContentView()
}
