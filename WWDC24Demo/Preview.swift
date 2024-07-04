//
//  Preview.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/4.
//

import Foundation
import SwiftUI

// Preview with parameter controls
#Preview("WWDC24AnimatedText") {
    @Previewable @State var text = "HELLO WORLD!"
    
    // Animation parameters
    @Previewable @State var animation: Animation = .bouncy
    @Previewable @State var targetFontSize: CGFloat = 30
    @Previewable @State var minimumFontSize: CGFloat = 30
    @Previewable @State var targetFontWeight: Font.Weight = .semibold
    @Previewable @State var minimumFontWeight: Font.Weight = .ultraLight
    @Previewable @State var targetFontWidth: Font.Width = .expanded
    @Previewable @State var minimumFontWidth: Font.Width = .compressed
    @Previewable @State var delayBetweenSwitch: Double = 3
    @Previewable @State var delayBetweenCharacter: Double = 2
    
    // Trigger the animation
    @Previewable @State var toggle = true
    
    ZStack {
        WWDC24AnimatedTextView(text, toggle: toggle, animation: animation, targetFontSize: targetFontSize, minimumFontSize: minimumFontSize, targetFontWeight: targetFontWeight, minimumFontWeight: minimumFontWeight, targetFontWidth: targetFontWidth, minimumFontWidth: minimumFontWidth, delayBetweenSwitch: delayBetweenSwitch, delayBetweenCharacter: delayBetweenCharacter)
        
        VStack {
            Spacer()
            Button("Toggle") {
                toggle.toggle()
            }
            .buttonStyle(.bordered)
        }
        .padding()
        .frame(height: .infinity)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    
    List {
        VStack(alignment: .leading) {
            Label("Target Font Size: \(targetFontSize.formatted())", systemImage: "textformat.size.larger")
            Slider(value: $targetFontSize, in: CGFloat(30)...CGFloat(60), step: 5)
        }
        
        VStack(alignment: .leading) {
            Label("Minimum Font Size: \(minimumFontSize.formatted())", systemImage: "textformat.size.smaller")
            Slider(value: $minimumFontSize, in: CGFloat(0)...CGFloat(60), step: 5)
        }
        
        HStack {
            Label("Animation", systemImage: "cursorarrow.motionlines")
            Spacer()
            Picker("Animation", selection: $animation) {
                Text("None")
                    .tag(Animation.linear(duration: 0))
                
                Text("Linear")
                    .tag(Animation.linear)
                
                Text("Ease-In")
                    .tag(Animation.easeIn)
                
                Text("Ease-Out")
                    .tag(Animation.easeOut)
                
                Text("Ease-In-Out")
                    .tag(Animation.easeInOut)
                
                Text("Bouncy")
                    .tag(Animation.bouncy)
                
                Text("Snappy")
                    .tag(Animation.snappy)
                
                Text("Smooth")
                    .tag(Animation.smooth)
                
                Text("Spring")
                    .tag(Animation.spring)
                
                Text("Interactive Spring")
                    .tag(Animation.interactiveSpring)
                
                Text("Interpolating Spring")
                    .tag(Animation.interpolatingSpring)
            }
            .labelsHidden()
        }
        
        HStack {
            Label("Target Font Weight", systemImage: "circle.fill")
            Spacer()
            Picker("Target Font Weight", selection: $targetFontWeight) {
                Text("Heavy")
                    .tag(Font.Weight.heavy)
                
                Text("Black")
                    .tag(Font.Weight.semibold)
                
                Text("Bold")
                    .tag(Font.Weight.semibold)
                
                Text("Semibold")
                    .tag(Font.Weight.semibold)
                
                Text("Medium")
                    .tag(Font.Weight.medium)
                
                Text("Regular")
                    .tag(Font.Weight.regular)
                
                Text("Thin")
                    .tag(Font.Weight.thin)
                
                Text("Ultralight")
                    .tag(Font.Weight.ultraLight)
            }
            .labelsHidden()
        }
        
        HStack {
            Label("Minimum Font Weight", systemImage: "circle")
            Spacer()
            Picker("Minimum Font Weight", selection: $minimumFontWeight) {
                Text("Heavy")
                    .tag(Font.Weight.heavy)
                
                Text("Black")
                    .tag(Font.Weight.semibold)
                
                Text("Bold")
                    .tag(Font.Weight.semibold)
                
                Text("Semibold")
                    .tag(Font.Weight.semibold)
                
                Text("Medium")
                    .tag(Font.Weight.medium)
                
                Text("Regular")
                    .tag(Font.Weight.regular)
                
                Text("Thin")
                    .tag(Font.Weight.thin)
                
                Text("Ultralight")
                    .tag(Font.Weight.ultraLight)
            }
            .labelsHidden()
        }
        
        HStack {
            Label("Target Font Width", systemImage: "rectangle.portrait.arrowtriangle.2.outward")
            Spacer()
            Picker("Target Font Width", selection: $targetFontWidth) {
                Text("Expanded")
                    .tag(Font.Width.expanded)
                
                Text("Standard")
                    .tag(Font.Width.standard)
                
                Text("Condensed")
                    .tag(Font.Width.condensed)
                
                Text("Compressed")
                    .tag(Font.Width.compressed)
            }
            .labelsHidden()
        }
        
        HStack {
            Label("Minimum Font Width", systemImage: "rectangle.portrait.arrowtriangle.2.inward")
            Spacer()
            Picker("Minimum Font Width", selection: $minimumFontWidth) {
                Text("Expanded")
                    .tag(Font.Width.expanded)
                
                Text("Standard")
                    .tag(Font.Width.standard)
                
                Text("Condensed")
                    .tag(Font.Width.condensed)
                
                Text("Compressed")
                    .tag(Font.Width.compressed)
            }
            .labelsHidden()
        }
        
        HStack {
            Label("Delay Between Switch: \(delayBetweenSwitch.formatted())", systemImage: "circle")
            Slider(value: $delayBetweenSwitch, in: 1...5, step: 1)
        }
        
        HStack {
            Label("Delay Between Character: \(delayBetweenCharacter.formatted())", systemImage: "circle")
            Slider(value: $delayBetweenCharacter, in: 1...5, step: 1)
        }
    }
}
