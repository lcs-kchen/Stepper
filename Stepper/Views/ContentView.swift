//
//  ContentView.swift
//  Stepper
//
//  Created by Haowen Chen on 2025-02-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: Binding.constant(1)) {
            
            AdditionView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }
                .tag(1)
        }
    }
}

#Preview {
    ContentView()
}
