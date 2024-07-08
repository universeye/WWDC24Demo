//
//  ScrollCell.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/7.
//

import SwiftUI

struct ScrollCell: View {
    var meshColors: [Color]
    @State private var pin: Float = 0.0
    @State private var timer: Timer?
    
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                [0.0, 0.0],
                [0.5, 0.0],
                [1.0, 0.0],
                
                [sinInRange(-0.8...(-0.2), 0.439, 0.342, pin),    sinInRange(0.3...0.7, 3.42, 0.984, pin)],
                [sinInRange(0.1...0.8, 0.239, 0.084, pin),        sinInRange(0.2...0.8, 5.21, 0.242, pin)],
                [sinInRange(1.0...1.5, 0.939, 0.084, pin),        sinInRange(0.4...0.8, 0.25, 0.642, pin)],
                
                [sinInRange(-0.8...(0.0), 1.439, 0.442, pin), sinInRange(1.4...1.9, 3.42, 0.984, pin)],
                [sinInRange(0.3...0.6, 0.339, 0.784, pin),    sinInRange(1.0...1.2, 1.22, 0.772, pin)],
                [sinInRange(1.0...1.5, 0.939, 0.056, pin),    sinInRange(1.3...1.7, 0.47, 0.342, pin)]
            ],
            colors: meshColors,
            background: .black
        )
        .clipShape(.rect(cornerRadius: 10))
        .shadow(radius: 10)
        .padding()
        .onAppear {
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { _ in
                pin += 0.02
            })
        }
        .frame(height: 440)
    }
    
    func sinInRange(_ range: ClosedRange<Float>, _ offset: Float, _ timeScale: Float, _ t: Float) -> Float {
        let amlitude = (range.upperBound - range.lowerBound) / 2
        let midPoint = (range.upperBound + range.lowerBound) / 2
        return midPoint + amlitude * sin(timeScale * t + offset)
    }
}

#Preview {
    ScrollCell(meshColors: [Color.gray, Color.pink, Color.black, Color.purple, Color.yellow, Color.orange, Color.yellow, Color.indigo, Color.green].shuffled())
}
