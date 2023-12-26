//
//  NeuButtonStyle.swift
//  ChurchManagement
//
//  Created by Guillermo Ruiz Baires on 8/9/23.
//

import Foundation
import SwiftUI

struct NeuButtonStyle: ButtonStyle {
    let width: CGFloat
    let height: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: width, height: height)
            .northWestShadow()
            .background(
            Capsule()
                .fill(Color.element)
                .northWestShadow()
            )
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)


    }
}
