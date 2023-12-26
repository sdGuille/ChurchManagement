//
//  MemberDetailView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 15/8/23.
//

import SwiftUI

struct MemberDetailView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    @State private var showDeleteAlert = false
    
    let member: Member
    var customName: String {
        let name = "\(member.nombre?.first ?? "U")"
        let lastname = "\(member.apellido?.first ?? "N")"
        return "\(name)\(lastname)"
    }
    
    var body: some View {
        ZStack {
            Color.element
            VStack {
                Form {
                    HStack {
                        Text(customName)
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(member.nombre ?? "")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            
                            Text(member.apellido ?? "")
                                .font(.footnote)
                                .tint(.gray)
                        }
                        
                    }
                    
                    Section("Inofrmacion General") {
                        Text(member.telefono ?? "Unknown")
                        Text(member.esCasado ? "Casado/a" : "Soltero/a")
                        Text(member.birthdate ?? Date(), style: .date)
                        Text(member.ocupacion ?? "Oficios domesticos")
                    }
                    .font(.footnote)
                    .fontWeight(.semibold)
                    
                    Section("Informacion Ministerial") {
                        Text(member.esMiembro ? "Miembro en propiedad" : "Miembro Principiante")
                        Text(member.bautizadoES ? "Bautizado en el Espiritu Santo" : "")
                        Text(member.ministerio ?? "")
                    }
                    .font(.footnote)
                    .fontWeight(.semibold)
                }
                .alert("Eliminar miembro?", isPresented: $showDeleteAlert) {
                    Button("Eliminar", role: .destructive, action: deleteMember)
                    Button("Cancelar", role: .cancel) {}
                } message: {
                    Text("Esta seguro?")
                }
                
                .toolbar {
                    Button {
                        showDeleteAlert = true
                    } label: {
                        Label("Eliminar miembro", systemImage: "trash")
                    }
                }
            }
        }
    }
    
    func deleteMember() {
        moc.delete(member)
        
//        try? moc.save()
        dismiss()
    }
}


//import SwiftUI
//
//struct MemberDetailView: View {
//    let member: Member
//
//    var body: some View {
//        List {
//            Section {
//                HStack {
//                    Text("DJ")
//                        .font(.title)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                        .frame(width: 72, height: 72)
//                        .background(Color(.systemGray3))
//                        .clipShape(Circle())
//
//                    VStack(alignment: .leading, spacing: 4) {
//                        Text(member.name)
//                            .font(.subheadline)
//                            .fontWeight(.semibold)
//                            .padding(.top, 4)
//
//                        Text(member.lastname)
//                            .font(.footnote)
//                            .tint(.gray)
//                    }
//                }
//            }
//
//            Section("General") {
//                phone
//                esCasado
//                birthdate
//                job
//            }
//
//            Section("Informacion Ministerial") {
//                bautizadoES
//                ministerio
//            }
//        }
//    }
//}
//
////struct MemberDetailView_Previews: PreviewProvider {
////    static var previews: some View {
////        MemberDetailView()
////    }
////}
//
//extension MemberDetailView {
//
//    var job: some View {
//        LabeledContent {
//            Text(member.job)
//        } label: {
//            Text("Ocupación")
//        }
//    }
//
//    var phone: some View {
//        LabeledContent {
//            Text(member.phoneNumber)
//        } label: {
//            Text("Telefono")
//        }
//    }
//
//    var birthdate: some View {
//        LabeledContent {
//            Text(member.birthdate, style: .date)
//        } label: {
//            Text("Cumpleaños")
//        }
//    }
//
//    var esCasado: some View {
//        LabeledContent {
//            Text("\(member.esCasado ? "Si" : "No")")
//        } label: {
//            Text("Estado Civil")
//        }
//    }
//
//    var bautizadoES: some View {
//        LabeledContent {
//            Text("\(member.bautizadoES ? "Si" : "No")")
//        } label: {
//            Text("Bautizado en el Espiritu Santo")
//        }
//    }
//
//    var ministerio: some View {
//        LabeledContent {
//            Text(member.ministerio)
//        } label: {
//            Text("Ministerio")
//        }
//    }
//}
