//
//  ChurchManagementApp.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 3/8/23.
//

import SwiftUI

@main
struct ChurchManagementApp: App {
//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
