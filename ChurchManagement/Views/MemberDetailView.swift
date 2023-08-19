//
//  MemberDetailView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 15/8/23.
//

import SwiftUI

struct MemberDetailView: View {
    let member: Member
    
    var body: some View {
        List {
            Section {
                HStack {
                    Text(member.iniciales)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(member.name)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text(member.lastname)
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
                bautizadoES
                ministerio
            }
        }
    }
}

//struct MemberDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MemberDetailView()
//    }
//}

extension MemberDetailView {
    
    var job: some View {
        LabeledContent {
            Text(member.job)
        } label: {
            Text("Ocupación")
        }
    }
    
    var phone: some View {
        LabeledContent {
            Text(member.phoneNumber)
        } label: {
            Text("Telefono")
        }
    }
    
    var birthdate: some View {
        LabeledContent {
            Text(member.birthdate, style: .date)
        } label: {
            Text("Cumpleaños")
        }
    }
    
    var esCasado: some View {
        LabeledContent {
            Text("\(member.esCasado ? "Si" : "No")")
        } label: {
            Text("Estado Civil")
        }
    }
    
    var bautizadoES: some View {
        LabeledContent {
            Text("\(member.bautizadoES ? "Si" : "No")")
        } label: {
            Text("Bautizado en el Espiritu Santo")
        }
    }
    
    var ministerio: some View {
        LabeledContent {
            Text(member.ministerio)
        } label: {
            Text("Ministerio")
        }
    }
}
