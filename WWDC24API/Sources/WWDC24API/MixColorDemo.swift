//
//  MixColorDemo.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/10.
//

import SwiftUI

public struct MixColorDemo: View {
    public init() {}
    
    public var body: some View {
        VStack {
            HStack {
                HStack {
                    Text("Red")
                        .foregroundColor(.red)
                    Text("+")
                    Text("50% white")
                        .foregroundColor(.black)
                }
                .bold()
                Text("= ")
                    .bold()
                Rectangle()
                    .fill(Color.red.mix(with: .white, by: 0.5))
                    .roundRect()
            }
            
            HStack {
                HStack {
                    Text("Green")
                        .foregroundColor(.green)
                    Text("+")
                    Text("60% Yellow")
                        .foregroundColor(.yellow)
                }
                .bold()
                
                Text("= ")
                    .bold()
                Rectangle()
                    .fill(Color.green.mix(with: .yellow, by: 0.6))
                    .roundRect()
            }
            .padding(.top)
            
            HStack {
                HStack {
                    Text("Orange")
                        .foregroundColor(.orange)
                    Text("+")
                    Text("50% Purple")
                        .foregroundColor(.purple)
                }
                .bold()
                
                Text("= ")
                    .bold()
                Rectangle()
                    .fill(Color.orange.mix(with: .purple, by: 0.5))
                    .roundRect()
            }
            .padding(.top)
        }
        
    }
}

#Preview {
    MixColorDemo()
}


