//
//  DetailView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 30/8/23.
//

import SwiftUI


struct DetailView: View {
    let member: Member
    
    var body: some View {
        ZStack {
            Color.element
                .ignoresSafeArea()
            VStack {
                ScrollView {
                    ZStack(alignment: .bottomTrailing) {
                        Image(member.ministerio ?? "person.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .clipShape(
                                RoundedRectangle(cornerRadius: 24.0,
                                                 style: .continuous)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 24.0,
                                                 style:  .continuous)
                                .foregroundColor(.clear)
                                .shadow(radius: 22.0, y: 8.0))
                            .frame(width: 300, height: 300)
                            
                        
                        Text(member.ministerio?.uppercased() ?? "Miembro/Visitante")
                            .font(.caption)
                            .fontWeight(.black)
                            .padding(8)
                            .foregroundColor(.white)
                            .background(.black.opacity(0.75))
                            .clipShape(Capsule())
                            .offset(x: -5, y: -5)
                    }
                    Text(member.nombre ?? "Unknown")
                        .font(.title)
                        .foregroundColor(.secondary)
                    Text(member.apellido ?? "Unknown")
                        .font(.title2)
                    HStack {
                        Image(systemName: "birthday.cake.fill")
                        Text(member.birthdate!, style: .date)
                    }
                    Text("\(member.esCasado ? "Casado/a" : "Soltero/a")")
                    HStack {
                        Image(systemName: "phone")
                        Text("\(member.telefono ?? "Desconocido")")
                    }
                    Text("\(member.ocupacion ?? "Unknown")")
                    Text("\(member.esMiembro ? "Miembro en propiedad" : "Miembro Principiante")")
                    Text("\(member.bautizadoES ? "Bautizado en el Espiritu Santo" : "")")
                }
            }
        }
    }
}

