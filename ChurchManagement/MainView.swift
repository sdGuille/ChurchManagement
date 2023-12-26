//
//  MemberListView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 11/8/23.
//

import SwiftUI

struct MainView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.nombre),
        SortDescriptor(\.apellido)
    ]) var members: FetchedResults<Member>
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(members, id: \.self) { member in
                    NavigationLink {
                        DetailView(member: member)
                    } label: {
                        HStack {
                            HStack {
                                Text(member.nombre ?? "Nombre desconocido")
                                    .font(.headline)
                                Text(member.apellido ?? "")
                                    .foregroundColor(.secondary)
                            }
                            EmojiStateView(esMiembro: member.esMiembro)
                                .font(.title3)
                        }
                    }
                }
                .onDelete(perform: deleteMembers)
            }
            .navigationTitle("Miembros")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingAddScreen.toggle()
                    } label: {
                        Label("Agregar miembro", systemImage: "person.badge.plus")
                            .font(.title2)
                            .foregroundColor(.black)
                            
                            
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                        .font(.title2)
                        .foregroundColor(.black)
                    
                }
            }
            
            .sheet(isPresented: $showingAddScreen) {
                AddMemberView()
            }
        }
    }
    
    func deleteMembers(at offsets: IndexSet) {
        for offset in offsets {
            let member = members[offset]
            
            moc.delete(member)
        }
        try? moc.save()
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
