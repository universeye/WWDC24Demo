//
//  ContentView.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/6/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home1", systemImage: "house")
                }
        }
    }
}

#Preview {
    ContentView()
}
