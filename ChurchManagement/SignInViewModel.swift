//
//  SignInViewModel.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 14/9/23.
//

import Foundation

final class SignInViewModel: ObservableObject {
    // MARK: - Properties
    @Published var isSigningIn = false
    @Published var email = ""
    @Published var password = ""
    
    var canSignIn: Bool {
        !email.isEmpty && !password.isEmpty
    }
    
    func signIn() {
        isSigningIn = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
            self.isSigningIn = false
        }
    }
}
