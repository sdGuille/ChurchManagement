//
//  EditMemberViewModel.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 17/8/23.
//

import Foundation
import CoreData

final class EditMemberViewModel: ObservableObject {
    
    @Published var member: Member
    private let context: NSManagedObjectContext
    
    init(provider: MembersProvider, member: Member? = nil) {
        self.context = provider.newContext
        self.member = Member(context: self.context)
    }
    
    func save() throws {
        if context.hasChanges {
            try context.save()
        }
    }
}
