//
//  CreateView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 11/8/23.
//

import SwiftUI

struct CreateView: View {
    @State private var age = Date(timeIntervalSince1970: 0)
    
    var body: some View {
        NavigationStack {
            Form {
                firstname
                lastname
                job
                phone
                birthDate

                Section {
                    submit
                }
            }
            .navigationTitle("Crear")
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
        TextField("First name", text: .constant(""))
    }
    
    var lastname: some View {
        TextField("Last name", text: .constant(""))
    }
    
    var phone: some View {
        TextField("Phone number", text: .constant(""))
    }
    
    var job: some View {
        TextField("Job", text: .constant(""))
    }
    
    var birthDate: some View {
        Section {
            DatePicker("Fecha de Nacimiento", selection: $age, displayedComponents: .date)
                .datePickerStyle(.compact)
        }
        .listSectionSeparator(.visible)
    }
    
    var submit: some View {
        Button("Submit") {
            // TODO: Handle action
        }
    }
}
