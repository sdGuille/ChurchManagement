//
//  ContentView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 3/8/23.
//

import SwiftUI
import CoreData

struct HomeView: View {
    private var memberList = ["Guillermo Ruiz", "Edras Perdomo", "Adan Torres"]
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        NavigationStack {
                List(memberList, id: \.self) { member in
                    Text(member)
                }
                .listStyle(.automatic)
                .navigationTitle("Lista de Miembros")
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
