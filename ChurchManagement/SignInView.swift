//
//  ContentView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 8/9/23.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                VStack(alignment: .leading) {
                    Text("Email")
                    TextField("Email", text: $viewModel.email)
                        .textInputAutocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                    Text("Password")
                    SecureField("Password", text: $viewModel.password)
                }
                .disabled(viewModel.isSigningIn)
                if viewModel.isSigningIn {
                    ProgressView()
                        .progressViewStyle(.circular)
                } else {
                    Button("Sign In") {
                        viewModel.signIn()
                    }
                    .buttonBorderShape(.capsule)
                    .buttonStyle(.borderedProminent)
                    .disabled(!viewModel.canSignIn)
                }
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: 400.0)
        .textFieldStyle(.roundedBorder)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SignInView(viewModel: SignInViewModel())
                .previewDevice(PreviewDevice(rawValue: "iPhone 14 pro"))
        }
    }
}
