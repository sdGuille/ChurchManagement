//
//  Bordered.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 4/8/23.
//


import SwiftUI

struct BorderedViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(
                EdgeInsets(
                    top: 8, leading: 16, bottom: 8, trailing: 15))
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.white.opacity(0.8))
            )
            .shadow(color: Color.gray.opacity(0.2),
                    radius: 3, x: 3, y: 2)
    }
}

extension View {
    func bordered() -> some View {
        ModifiedContent(
            content: self,
            modifier: BorderedViewModifier()
        )
    }
}
