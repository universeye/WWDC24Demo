//
//  ScrollViewAPI.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/4.
//

import SwiftUI

struct ScrollViewAPI: View {
    @State private var isScrolling: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView {
                ForEach(0...6, id: \.self) { meshColor in
                    ScrollCell(meshColors: [Color.gray, Color.pink, Color.black, Color.purple, Color.yellow, Color.orange, Color.yellow, Color.indigo, Color.green].shuffled())
                }
                .padding()
            }
            .contentMargins(.top, 56)
            .onScrollPhaseChange { oldPhase, newPhase, context in
                withAnimation {
                    switch newPhase {
                    case .idle:
                        isScrolling = false
                    case .tracking:
                        isScrolling = true
                    case .interacting:
                        isScrolling = true
                    case .decelerating:
                        isScrolling = true
                    case .animating:
                        isScrolling = true
                    }
                }
            }
            VStack {
                HStack {
                    Text("isScrolling: \(isScrolling)")
                        .contentTransition(.numericText())
                        .frame(width: 220)
                    Image(systemName: isScrolling ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .foregroundStyle(isScrolling ? .green : .red)
                        .contentTransition(.symbolEffect(.replace))
                }
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .background(.ultraThinMaterial)
                Spacer()
            }
        }
    }
}

#Preview {
    ScrollViewAPI()
}
