//
//  ChurchManagementApp.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 3/8/23.
//

import SwiftUI

@main
struct ChurchManagementApp: App {

    var body: some Scene {
        WindowGroup {
            MemberListView()
                .environment(\.managedObjectContext, MembersProvider.shared.viewContext)
        }
    }
}
