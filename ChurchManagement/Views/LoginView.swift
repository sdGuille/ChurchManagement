//
//  LoginScreen.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 4/8/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongPassword = 0
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
                            .padding()
                            .frame(width: 300, height: 50)
                            .bordered()
                            .border(.red, width: CGFloat(wrongUsername))
                        
                        SecureField("Enter your password", text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .bordered()
                        
                            .border(.red, width: CGFloat(wrongPassword))
    
                        Button(action: { }) {
                            Text("Get Started")
                            Image(systemName: "arrow.right.circle")
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.orange.opacity(0.7))
                        .cornerRadius(8)
                        
                        
                        
                    }
                    
                    Spacer()
                    
                }
            }
        }
        .toolbar(.hidden)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}