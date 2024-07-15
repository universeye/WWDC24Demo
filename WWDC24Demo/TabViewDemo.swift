//
//  TabViewDemo.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/13.
//

import SwiftUI

struct TabViewDemo: View {
    var body: some View {
        TabView {
            Text("1")
                .tabItem {
                    Label("Home1", systemImage: "square.and.arrow.up.fill")
                }
            Text("2")
                .tabItem {
                    Label("Home1", systemImage: "pencil.circle")
                }
            Text("3")
                .tabItem {
                    Label("Home1", systemImage: "rectangle.and.pencil.and.ellipsis.rtl")
                }
            Text("4")
                .tabItem {
                    Label("Home1", systemImage: "scribble.variable")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .background(Color(.secondarySystemBackground))
    }
}

#Preview {
    TabViewDemo()
        .preferredColorScheme(.dark)
}
