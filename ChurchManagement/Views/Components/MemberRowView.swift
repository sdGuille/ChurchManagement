//
//  MemberRowView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 15/8/23.
//

import SwiftUI

struct MemberRowView: View {
    
    /// Modifier Object Context
    @Environment(\.managedObjectContext) private  var moc
    @ObservedObject var member: Member
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(member.formatedName )
                .font(.system(size: 26, design: .rounded).bold())
            Text(member.phoneNumber)
                .font(.callout.bold())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(alignment: .topTrailing) {
            Button {
                toggleIsMember()
            } label: {
                Image(systemName: "star")
                    .font(.title3)
                    .symbolVariant(.fill)
                    .foregroundColor(member.isMember ? .yellow : .gray.opacity(0.3))
            }
        }
    }
}

private extension MemberRowView {
    
    func toggleIsMember() {
        member.isMember.toggle()
        do {
            if moc.hasChanges {
                try moc.save()
            }
        } catch {
            print(error)
        }
    }
}

//struct MemberRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        MemberRowView()
//    }
//}
