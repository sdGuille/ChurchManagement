//
//  EmojiStateView.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 29/8/23.
//

import SwiftUI

struct EmojiStateView: View {
    let esMiembro: Bool
    
    var body: some View {
        switch esMiembro {
        case true:
            return Image(systemName: "star.fill")
                .foregroundColor(.yellow)
        case false:
            return Image(systemName: "star")
                .foregroundColor(.gray)
        }
    }
}

struct EmojiStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiStateView(esMiembro: false)
    }
}
