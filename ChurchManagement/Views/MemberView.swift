//
//  MemberView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 5/8/23.
//

import SwiftUI

struct MemberView: View {
    
    
    var body: some View {
        Form {
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
                        Text("Guillermo Ruiz")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text("Diacono")
                            .font(.footnote)
                            .tint(.gray)
                        
                    }
                }
                
            }
            
            Section("Informacion Personal") {
                Text("Edad: 30")
                Text("Estado civil: Casado")
                Text("Telefono: 69654804")
            }
            
            
            Section("Informacion Ministerial") {
                Text("Es Bautizado: Si")
                Text("Bautizado en el Espiritu Santo: Si")
                Text("Esta actualmente en Discipulado: No")
            }
            
        }
        .formStyle(.automatic)
    }
}

struct MemberView_Previews: PreviewProvider {
    static var previews: some View {
        MemberView()
    }
}
