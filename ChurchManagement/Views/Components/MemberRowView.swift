//
//  MemberRowView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 15/8/23.
//

import SwiftUI

struct MemberRowView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Nombre")
                .font(.system(size: 26, design: .rounded).bold())
            Text("Number de telefono")
                .font(.callout.bold())
            Text("")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(alignment: .topTrailing) {
            Button {
                // TODO: Handle Memebership
            } label: {
                Image(systemName: "star")
                    .font(.title3)
                    .symbolVariant(.fill)
                    .foregroundColor(.gray.opacity(0.3))
            }
        }
    }
}

struct MemberRowView_Previews: PreviewProvider {
    static var previews: some View {
        MemberRowView()
    }
}
