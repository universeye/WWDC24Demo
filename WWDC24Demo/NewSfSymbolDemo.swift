//
//  NewSfSymbolDemo.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/9.
//

import SwiftUI

struct NewSfSymbolDemo: View {
    @State private var isOn = false
    @State private var count = 0
    
    var body: some View {
        VStack {
            Image(systemName: isOn ? "bell.fill" : "bell.slash.fill")
                .font(.system(size: 100, weight: .bold))
                .foregroundStyle(.yellow.gradient)
                .contentTransition(.symbolEffect(.replace))
                .symbolEffect(.wiggle, value: count)
                .frame(height: 150)
            GroupBox {
                Toggle(isOn: $isOn) {
                    Label("isOn", systemImage: "bell")
                        .bold()
                        .onChange(of: isOn) { _ , newValue in
                            if newValue {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                    count += 1
                                }
                            }
                        }
                }
            }
            .shadow(color: .gray.opacity(0.2), radius: 10)
            .padding()
        }
    }
}

#Preview {
    NewSfSymbolDemo()
}
