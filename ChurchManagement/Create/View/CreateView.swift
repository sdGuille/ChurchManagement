//
//  CreateView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 11/8/23.
//

import SwiftUI

struct CreateView: View {
    
    var body: some View {
        NavigationStack {
            Form {
                firstname
                lastname
                job
                phone
                esBautizado
                bautizadoES
                ministerio
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
                        submit
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        // TODO: Do something here
                    }
                }
            }
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}

private extension CreateView {
    
    var firstname: some View {
        TextField("Nombre", text: .constant(""))
    }
    
    var lastname: some View {
        TextField("Apellido", text: .constant(""))
    }
    
    var phone: some View {
        TextField("Numero de telefono", text: .constant(""))
            .keyboardType(.phonePad)
    }
    
    var job: some View {
        TextField("Ocupacion", text: .constant(""))
    }
    
    var isMember: some View {
        Toggle("Es Miembro", isOn: .constant(true))
    }
    
    var esBautizado: some View {
        TextField("Es bautizado", text: .constant(""))
    }
    
    var bautizadoES: some View {
        TextField("Bautizado en El Espiritu Santo", text: .constant(""))
    }
    
    var ministerio: some View {
        TextField("Ministerio", text: .constant(""))
    }
    
    var birthDate: some View {
        Section {
            DatePicker("Fecha de Nacimiento", selection: .constant(.now), displayedComponents: [.date])
                .datePickerStyle(.compact)
        }
    }
    
    var submit: some View {
        Button("Submit") {
            // TODO: Do something here
        }
    }
}
