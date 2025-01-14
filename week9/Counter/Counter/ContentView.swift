//
//  ContentView.swift
//  Counter
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0  // State variable

        var body: some View {
            VStack {
                Text("Counter App")
                    .font(.largeTitle)
                    .bold()
                
                Text("\(counter)")
                    .font(.system(size: 45))
                    .bold()

                HStack {
                    Button(action: {
                        if counter > 0{
                            counter -= 1
                        }
                    }) {
                        Text("-")
                            .font(.system(size: 25))
                            .padding(30)
                            .background(Circle().fill(Color.red))
                            .foregroundColor(.white)
                    }
                    
                    Button(action: {
                        counter += 1  // Updates the state
                    }) {
                        Text("+")
                            .font(.system(size: 25))
                            .padding(30)
                            .background(Circle().fill(Color.green))
                            .foregroundColor(.white)
                    }
                }
                Button(action: {
                    counter = 0 // Updates the state
                }) {
                    Text("Reset")
                        .font(.system(size: 25))
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }

#Preview {
    ContentView()
}
