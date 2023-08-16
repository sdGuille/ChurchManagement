//
//  MemberListView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 11/8/23.
//

import SwiftUI

struct MemberListView: View {
    @State private var search = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach((0...10), id: \.self) { item in
                    ZStack(alignment: .leading) {
                        NavigationLink(destination: MemberDetailView()) {
                            EmptyView()
                        }
                        .opacity(0)
                        MemberRowView()
                    }
                }
            }
            .navigationTitle("Lista de Miembros")
            .searchable(text: $search, prompt: "Buscar miembros")
        }
    }
    
}


struct MemberListView_Previews: PreviewProvider {
    static var previews: some View {
        MemberListView()
    }
}
