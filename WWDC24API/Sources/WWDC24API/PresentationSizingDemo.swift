//
//  PresentationSizingDemo.swift
//
//
//  Created by Terry Kuo on 2024/7/15.
//

import SwiftUI

public struct PresentationSizingDemo: View {
    @State private var isShowPageStyle = false
    @State private var isShowFormStyle = false
    @State private var isShowFittedStyle = false
    @State private var name = ""
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: 20) {
            Button {
                isShowFormStyle.toggle()
            } label: {
                Text("Form")
                    .font(.title)
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $isShowFormStyle) {
                NavigationStack {
                    Form {
                        Section {
                            Text("Form Style")
                        }
                        Section {
                            TextField("Name", text: $name)
                        } header: {
                            Text("General")
                        }
                    }
                    .presentationSizing(.form)
                    .navigationTitle("Form")
                }
            }
            
            Button {
                isShowPageStyle.toggle()
            } label: {
                Text("Page").font(.title)
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $isShowPageStyle) {
                Text("Page Style")
                    .font(.system(size: 70, weight: .bold))
                    .presentationSizing(.page)
            }
            
            Button {
                isShowFittedStyle.toggle()
            } label: {
                Text("Fitted").font(.title)
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $isShowFittedStyle) {
                Text("Fitted Style")
                    .presentationSizing(.fitted)
            }

        }
    }
}

#Preview {
    PresentationSizingDemo()
}
