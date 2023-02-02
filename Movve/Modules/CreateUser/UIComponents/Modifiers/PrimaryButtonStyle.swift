//
//  PrimaryButtonStyle.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 24/01/23.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    
    var color: Color = .white
    var bgColor: Color = .secondaryColor
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.setFont(size: 17, weight: .bold))
            .foregroundColor(color)
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(bgColor)
            )
            .padding(.horizontal)
            .opacity(configuration.isPressed ? 0.8 : 1)
    }
}
