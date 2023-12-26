//
//  ContentView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 8/9/23.
//

import SwiftUI

struct SignInView: View {
    let backgroundGradient = LinearGradient(
        colors: [Color.red, Color.blue], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack {
            backgroundGradient.opacity(0.2)
                .ignoresSafeArea()
            VStack {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
