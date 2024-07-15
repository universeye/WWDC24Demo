//
//  ContentView.swift
//  WWDC24Mc
//
//  Created by Terry Kuo on 2024/7/15.
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
