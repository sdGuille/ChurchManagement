//
//  ContentView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 3/8/23.
//

import SwiftUI
import CoreData

struct HomeView: View {
    
    @State var loadingError = false
    private var memberList = ["Guillermo Ruiz", "Edras Perdomo", "Adan Torres"]
    
    
    var body: some View {
        NavigationStack {
            List(memberList, id: \.self) { member in
                Text(member)
            }
                        Button("Alert") {
                            loadingError = true
                        }
            
            .navigationTitle("Lista de Miembros")
            
            /// This is an example alert, will be modified
            .alert(isPresented: $loadingError) {
                Alert(
                    title: Text("Important message"),
                    message: Text("""
                Concatact with the Developer to solve this problem
                """),
                    dismissButton: .default(Text("Got it!"))
                )
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
