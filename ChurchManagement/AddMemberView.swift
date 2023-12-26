//
//  CreateView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 11/8/23.
//

import SwiftUI

struct AddMemberView: View {

    @Environment(\.dismiss) private var dismiss
    @Environment(\.managedObjectContext) var moc
    
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var telefono = ""
    @State private var ocupacion = ""
    @State private var esCasado = false
    
    @State private var ministerio = ""
    @State private var esMiembro = false
    @State private var birthDate = Date()
    
    @State private var bautizadoES = false
    
    
    let ministerios = ["Concilio", "Oracion", "Dicipulado", "Misiones", "Alabanza", "Servidores", "Diaconizas", "Infanto Juvenil", "Castillo del Rey"]
    
    var body: some View {
        NavigationView {
            Form {
                Section("Informacion Personal") {
                    TextField("Nombre", text: $nombre)
                    TextField("Apellido", text: $apellido)
                    
                    DatePicker("Fecha de Nacimiento",
                               selection: $birthDate,
                               displayedComponents: [.date])
                    
                    TextField("Telefono", text: $telefono)
                        .keyboardType(.numberPad)
                    TextField("Ocupacion", text: $ocupacion)
                    Toggle("¿Es Casado?", isOn: $esCasado)
                    
                }
                
                Section("Informacion Ministerial") {
                    Toggle("¿Es Miembro?", isOn: $esMiembro)
                    Toggle("¿Es Bautizado en el Espiritu Santo?", isOn: $bautizadoES)
                    
                    Picker("Ministerio", selection: $ministerio) {
                        ForEach(ministerios, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.automatic)
                }
                
                Section {
                    Button("Guardar") {
                        let nuevoMiembro = Member(context: moc)
                        nuevoMiembro.id = UUID()
                        nuevoMiembro.nombre = nombre
                        nuevoMiembro.apellido = apellido
                        nuevoMiembro.telefono = telefono
                        nuevoMiembro.ocupacion = ocupacion
                        nuevoMiembro.esCasado = esCasado
                        nuevoMiembro.birthdate = birthDate
                        nuevoMiembro.esCasado = esCasado
                        nuevoMiembro.esMiembro = esMiembro
                        nuevoMiembro.bautizadoES = bautizadoES
                        nuevoMiembro.ministerio = ministerio
                        
                        try? moc.save()
                        dismiss()
                    }
                }
            }
            .navigationTitle("Agregar miembro")
        }
    }
    
//    var isValid: Bool {
//        let nuevoMiembro = Member(context: moc)
//        !nombre.isEmpty &&
//        !apellido.isEmpty &&
//        !telefono.isEmpty
//    }
}

struct AddMemberView_Previews: PreviewProvider {
    static var previews: some View {
        AddMemberView()
    }
}
