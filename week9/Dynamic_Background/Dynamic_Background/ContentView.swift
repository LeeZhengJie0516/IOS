//
//  ContentView.swift
//  Dynamic_Background
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isRed:Bool = true
    
    var body: some View {
        ZStack {
            if isRed == true {
                ZStack {
                    Color(.red)
                        .ignoresSafeArea(.all)
                }
            }
            else {
                ZStack {
                    Color(.white)
                }
            }
            Button(action: {
                isRed.toggle()
            }) {
                Text("Toggle to red")
                    .foregroundStyle(.white)
                    .padding()
                    .bold()
                    .background(.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
