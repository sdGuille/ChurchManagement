//
//  LoginScreen.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 4/8/23.
//

import SwiftUI

struct LoginScreen: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongPassword = 3
    @State private var wrongUsername = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.orange.opacity(0.2)
                    .ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    Text("Login")
                        .font(.largeTitle.bold())
                    Text("Please sign in to continue")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    VStack {
                        TextField("Username", text: $username)
                        SecureField("Enter your password", text: $password)
                    }
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongUsername))
                    Spacer()
                    
                }
            }
        }
        .toolbar(.hidden)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}