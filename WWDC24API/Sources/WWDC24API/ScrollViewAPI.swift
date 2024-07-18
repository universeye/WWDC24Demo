//
//  ScrollViewAPI.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/4.
//

import SwiftUI

public struct ScrollViewAPI: View {
    @State private var isScrolling: Bool = false
    @State private var isShowBackButton = false
    public init() {}
    
    public var body: some View {
        ZStack {
            ScrollView {
                ForEach(0...8, id: \.self) { meshColor in
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
            .onScrollGeometryChange(for: Bool.self, of: { geometry in
                geometry.contentOffset.y < geometry.contentInsets.top
            }, action: { wasScrolledToTop, isScrolledToTop in
                withAnimation {
                    isShowBackButton = !isScrolledToTop
                }
            })
            .toolbarVisibility(isScrolling ? .hidden : .visible, for: .tabBar)
            .toolbarVisibility(isScrolling ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Mesheesh")
            
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
                
                if isShowBackButton {
                    Button {

                    } label: {
                        Label("Back to top", systemImage: "arrow.up")
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.black.mix(with: .white, by: 0.32))
                            .clipShape(.rect(cornerRadius: 10))
                            .padding(.horizontal)
                            .shadow(color: .gray.opacity(0.4), radius: 10)
                    }
                    .animation(.bouncy, value: isShowBackButton)
                    .scaleEffect(isShowBackButton ? 1 : 0)
//                    .transition(.move(edge: .top))
                    .padding(.top)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ScrollViewAPI()
}
