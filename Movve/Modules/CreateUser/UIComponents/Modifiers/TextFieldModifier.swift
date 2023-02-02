//
//  TextFieldModifier.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 24/01/23.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background(Divider(), alignment: .bottom)
            .multilineTextAlignment(.center)
    }
}

extension TextField {
    
    func setTextField() -> some View {
        modifier(TextFieldModifier())
    }
}
