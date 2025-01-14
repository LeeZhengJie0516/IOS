//
//  ContentView.swift
//  Toggle_icon
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var soundOn = false
    
    var body: some View {
        VStack {
            if soundOn == true {
                Toggle("", isOn: $soundOn)
                    .padding()
                Image(systemName: "speaker.wave.1.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            else {
                Toggle("", isOn: $soundOn)
                    .padding()
                Image(systemName: "speaker.slash.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
            }

        }
        .frame(width:100, alignment: .center)
        Spacer()
    }
}


#Preview {
    ContentView()
}
