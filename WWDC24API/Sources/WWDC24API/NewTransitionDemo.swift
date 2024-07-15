//
//  NewTransitionDemo.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/4.
//

import SwiftUI

public struct NewTransitionDemo: View {
    @Namespace private var namespace
    
    public init() {}
    
    public var body: some View {
//        ZStack {
            VStack {
                VStack {
                    Text("text")
                        .matchedGeometryEffect(id: "text", in: namespace)
                    Image("muaicappicon")
                        .resizable()
                        .scaledToFill()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .matchedGeometryEffect(id: "Image", in: namespace)
                }
                .matchedTransitionSource(id: "Test", in: namespace)
                
                NavigationLink {
                    VStack {
                        Text("text")
                            .matchedGeometryEffect(id: "text", in: namespace)
                        Image("muaicappicon")
                            .resizable()
                            .scaledToFill()
                            .clipShape(.rect(cornerRadius: 10))
                            .frame(width: 100, height: 100)
                            .matchedGeometryEffect(id: "Image", in: namespace)
                    }
//                    .navigationTransition(.zoom(sourceID: "Test", in: namespace))
                } label: {
                    Text("Is show Full")
                }
            }
            
//            if isShowFull {
//                VStack {
//                    Image("muaicappicon")
//                        .resizable()
//                        .scaledToFill()
//                        .clipShape(.rect(cornerRadius: 10))
//                        .frame(width: 100, height: 100)
//                        .matchedGeometryEffect(id: "Image", in: namespace)
//                    Text("test")
//                        .matchedGeometryEffect(id: "test", in: namespace)
//                    Button {
//                        withAnimation {
//                            isShowFull.toggle()
//                        }
//                    } label: {
//                        Text("Dismiss")
//                    }
//                }
//                .padding(20)
//                .frame(maxWidth: .infinity)
//                .background(Color.cyan.gradient)
//                .matchedTransitionSource(id: "Test", in: namespace)
//            }
//        }
//        .fullScreenCover(isPresented: $isShowFull) {
//            VStack {
//                Image("muaicappicon")
//                    .resizable()
//                    .scaledToFill()
//                    .clipShape(.rect(cornerRadius: 10))
//                    .frame(width: 200, height: 200)
//                    .matchedGeometryEffect(id: "Image", in: namespace)
//                Button {
//                    isShowFull.toggle()
//                } label: {
//                    Text("Dismiss")
//                }
//
//            }
//            .matchedTransitionSource(id: "Test", in: namespace)
//        }
//        NavigationLink {
//            Image("muaicappicon")
//                .resizable()
//                .scaledToFill()
//                .clipShape(.rect(cornerRadius: 10))
//                .frame(width: 200, height: 200)
//                .matchedGeometryEffect(id: "Image", in: namespace)
////                .navigationTransition(.zoom(sourceID: "Test", in: namespace))
//        } label: {
//            Image("muaicappicon")
//                .resizable()
//                .scaledToFill()
//                .clipShape(.rect(cornerRadius: 10))
//                .frame(width: 100, height: 100)
//                .matchedGeometryEffect(id: "Image", in: namespace)
////                .matchedTransitionSource(id: "Test", in: namespace)
//        }
    }
}

#Preview {
    NavigationStack {
        NewTransitionDemo()
    }
}
