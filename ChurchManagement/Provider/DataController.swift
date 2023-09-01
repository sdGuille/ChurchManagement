//
//  MemberProvider.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 15/8/23.
//

import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "ChurchManagement")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
}
