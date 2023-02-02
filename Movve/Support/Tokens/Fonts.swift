//
//  Fonts.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 24/01/23.
//

import SwiftUI

extension Font {
    
    static func setFont(size: CGFloat = 16, weight: Weight = .regular) -> Font {
        .system(size: size, weight: weight)
    }
}
