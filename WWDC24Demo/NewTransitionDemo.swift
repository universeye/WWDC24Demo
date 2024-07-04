//
//  NewTransitionDemo.swift
//  WWDC24Demo
//
//  Created by Terry Kuo on 2024/7/4.
//

import SwiftUI

struct NewTransitionDemo: View {
    @Namespace private var namespace
    
    var body: some View {
        NavigationLink {
            Text("Detail")
                .navigationTransition(.zoom(sourceID: "Test", in: namespace))
        } label: {
            VStack {
                Image(systemName: "arrowshape.turn.up.forward.fill")
                    .font(.system(size: 40))
                Text("GO")
                    .font(.system(size: 30))
                    .bold()
            }
                
                .matchedTransitionSource(id: "Test", in: namespace)
        }
    }
}

#Preview {
    NavigationStack {
        NewTransitionDemo()
    }
}
