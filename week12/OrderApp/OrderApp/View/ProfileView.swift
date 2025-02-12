//
//  ProfileView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct ProfileView: View {
    @Query var allItems: [MenuItem]
    @Environment(\.modelContext) private var modelContext
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            Image("wendys")
                .resizable()
                .frame(width: 180, height: 180)
            Text("Register page")
                .font(.title)
                .bold()
            VStack {
                HStack {
                    Text("Email")
                        .frame(width: 150)
                    TextField("Email", text: $email)
                        .padding()
                }
                
                HStack {
                    Text("Password")
                        .frame(width: 150)
                    TextField("Password", text: $password)
                        .padding()
                }
                
                HStack {
                    Text("Confirm Password")
                        .frame(width: 150)
                        
                    TextField("Confirm Password", text: $confirmPassword)
                        .padding()
                }
                
                Button("Register"){}
                
            }
            .padding()
            Button(action: {clearAllMenuItems()}) {
                Text("Clear All Menu Items")
            }
        }

    }
    
    private func clearAllMenuItems() {
        for item in allItems {
            modelContext.delete(item)
        }
        try? modelContext.save()
    }
}

#Preview {
    ProfileView()
}
