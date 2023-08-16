//
//  MemberDetailView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 15/8/23.
//

import SwiftUI

struct MemberDetailView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text("GR")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Name here")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text("Role")
                            .font(.footnote)
                            .tint(.gray)
                    }
                }
            }
            
            Section("General") {
                phone
                esCasado
                birthdate
                job
            }
            
            Section("Informacion Ministerial") {
                esBautizado
                bautizadoES
                ministerio
            }
        }
    }
}

struct MemberDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MemberDetailView()
    }
}

extension MemberDetailView {
    
    var job: some View {
        LabeledContent {
            Text("Ingrese su ocupación")
        } label: {
            Text("Ocupación")
        }
    }
    
    var phone: some View {
        LabeledContent {
            Text("Ingrese number de telefono")
        } label: {
            Text("Telefono")
        }
    }
    
    var birthdate: some View {
        LabeledContent {
            Text("Enero 1, 2000")
        } label: {
            Text("Cumpleaños")
        }
    }
    
    var esCasado: some View {
        LabeledContent {
            Text("Si/no")
        } label: {
            Text("Estado Civil")
        }
    }
    
    var esBautizado: some View {
        LabeledContent {
            Text("Si/no")
        } label: {
            Text("Es Bautizado")
        }
    }
    
    var bautizadoES: some View {
        LabeledContent {
            Text("Si/No")
        } label: {
            Text("Bautizado en el Espiritu Santo")
        }
    }
    
    var ministerio: some View {
        LabeledContent {
            Text("Servidores")
        } label: {
            Text("Ministerio")
        }
    }
}
