//
//  Member.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 15/8/23.
//

import Foundation
import CoreData

final class Member: NSManagedObject {
    @NSManaged var bautizadoES: Bool
    @NSManaged var birthdate: Date
    @NSManaged var esBautizado: Bool
    @NSManaged var esCasado: Bool
    @NSManaged var id: UUID
    @NSManaged var isMember: Bool
    @NSManaged var ministerio: String
    @NSManaged var name: String
    @NSManaged var phoneNumber: String
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        
        setPrimitiveValue(Date.now, forKey: "birthdate")
        setPrimitiveValue(false, forKey: "esBautizado")
        setPrimitiveValue(false, forKey: "esCasado")
        setPrimitiveValue(false, forKey: "isMember")
        setPrimitiveValue(false, forKey: "bautizadoES")
    }
}
