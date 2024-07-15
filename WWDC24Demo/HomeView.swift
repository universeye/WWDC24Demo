//
//  HomeView.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/4.
//

import SwiftUI
enum APIViewType: String, CaseIterable {
    case ScrollViewAPI
    case transitionAPI
    case AppleWWDC24AnimatedTextView
    case NewSFSymbolDemo
    case mixColor
}
struct HomeView: View {
    @State private var path: [APIViewType] = []
    @State private var isOn = false
    
    var body: some View {
        NavigationStack(path: $path) {
            List(APIViewType.allCases, id: \.self) { kavSoftViewType in
                NavigationLink(kavSoftViewType.rawValue, value: kavSoftViewType)
                
            }
            .navigationDestination(for: APIViewType.self) { kavSoftViewType in
                switch kavSoftViewType {
                case .ScrollViewAPI:
                    ScrollViewAPI()
                case .transitionAPI:
                    NewTransitionDemo()
                case .AppleWWDC24AnimatedTextView:
                    VStack {
                        WWDC24AnimatedTextView("WWDC24", toggle: isOn)
                        Button("Toggle") {
                            isOn.toggle()
                        }
                        .buttonStyle(.bordered)
                    }
                case .NewSFSymbolDemo:
                    NewSfSymbolDemo()
                case .mixColor:
                    MixColorDemo()
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
