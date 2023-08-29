//
//  CreateView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 11/8/23.
//

import SwiftUI

struct CreateView: View {
    

    @Environment(\.dismiss) private var dismiss
    @ObservedObject var vm: EditMemberViewModel
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        NavigationStack {
            Form {
                firstname
                lastname
                phone
                job
                ministerio
                bautizadoES
                isMember
                birthDate

                Section {
                    submit
                }
            }
            .navigationTitle("Crear")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Guardar") {
                        do {
                            try viewContext.save()
                            dismiss()
                            
                        } catch {
                            print(error)
                        }
                    }
                }
            }
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView(vm: .init(provider: .shared))
    }
}

private extension CreateView {
    
    var firstname: some View {
        TextField("Nombre", text: $vm.member.name)
    }
    
    var lastname: some View {
        TextField("Apellido", text: $vm.member.lastname)
    }
    
    var phone: some View {
        TextField("Numero de telefono", text: $vm.member.phoneNumber)
            .keyboardType(.phonePad)
    }
    
    var job: some View {
        TextField("Ocupacion", text: $vm.member.job)
    }
    
    var isMember: some View {
        Toggle("Es Miembro", isOn: $vm.member.isMember)
    }
    
    var bautizadoES: some View {
        Toggle("Bautizado en El Espiritu Santo", isOn: $vm.member.bautizadoES)
    }
    
    var ministerio: some View {
        TextField("Ministerio", text: $vm.member.ministerio)
    }
    
    var birthDate: some View {
        Section {
            DatePicker("Fecha de Nacimiento", selection: $vm.member.birthdate, displayedComponents: [.date])
                .datePickerStyle(.compact)
        }
    }
    
    var submit: some View {
        Button("Submit") {
            // TODO: Do something here
        }
    }
}
