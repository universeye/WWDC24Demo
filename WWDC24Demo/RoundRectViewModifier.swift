//
//  RoundRectViewModifier.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/10.
//

import SwiftUI

struct RoundSq: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 130, height: 50)
            .clipShape(.rect(cornerRadius: 10))
            .shadow(color: .gray.opacity(0.3), radius: 14)
            .padding(.vertical)
    }
}

extension View {
    func roundRect() -> some View {
        modifier(RoundSq())
    }
}
