//
//  ChurchManagementApp.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 3/8/23.
//

import SwiftUI

@main
struct ChurchManagementApp: App {
    let persistentContainer = MembersProvider.shared.persistentContainer

    var body: some Scene {
        WindowGroup {
            MemberListView()
                .environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
