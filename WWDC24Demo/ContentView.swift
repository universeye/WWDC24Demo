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
            Tab("Main", systemImage: "house") {
                HomeView()
            }
            TabSection("First") {
                Tab("Bookmark", systemImage: "bookmark") {
                   Text("Bookmark")
                }
                Tab("Personal", systemImage: "person") {
                   Text("Personal")
                }
            }
            TabSection("Second") {
                Tab("Settings", systemImage: "gearshape") {
                   Text("Settings")
                }
            }
            Tab(role: .search) {
                Text("Search here")
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    ContentView()
//        .preferredColorScheme(.dark)
}
