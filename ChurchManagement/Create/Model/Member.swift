//
//  Member.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 15/8/23.
//

import Foundation
import CoreData

final class Member: NSManagedObject, Identifiable {
    
    @NSManaged var job: String
    @NSManaged var bautizadoES: Bool
    @NSManaged var birthdate: Date
    @NSManaged var esCasado: Bool
    @NSManaged var id: UUID
    @NSManaged var isMember: Bool
    @NSManaged var ministerio: String
    @NSManaged var name: String
    @NSManaged var lastname: String
    @NSManaged var phoneNumber: String
    
    var isBirthDate: Bool {
        Calendar.current.isDateInToday(birthdate)
    }
    
    var formatedName: String {
        return "\(isBirthDate ? "🎂" : "")\(name)"
    }
    
//    var iniciales: String {
//        guard let firstNameCharacter = name.first else { return "N"}
//        guard let lastNameCharacter = lastname.first else { return "L"}
//        
//        return "\(firstNameCharacter)\(lastNameCharacter)"
//    }
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        
        setPrimitiveValue(Date.now, forKey: "birthdate")
        setPrimitiveValue(false, forKey: "esCasado")
        setPrimitiveValue(false, forKey: "isMember")
        setPrimitiveValue(false, forKey: "bautizadoES")
    }
}

extension Member {
    
    private static var memberFetchRequest: NSFetchRequest<Member> {
        NSFetchRequest(entityName: "Member")
    }
    
    static func all() -> NSFetchRequest<Member> {
        let request: NSFetchRequest<Member> = memberFetchRequest
        request.sortDescriptors = [
            NSSortDescriptor(keyPath: \Member.name, ascending: true)
        ]
        return request
    }
}
