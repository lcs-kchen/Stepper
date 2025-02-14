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
                    Image(systemName: "plus")
                    Text("Addtion")
                }
                .tag(1)
            
            SubtractionView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Subtraction")
                }
                .tag(2)
            
            MultiplicationView()
                .tabItem {
                    Image(systemName: "multiply")
                    Text("Multiplication")
                }
                .tag(3)
            
            DivisionView()
                .tabItem {
                    Image(systemName: "divide")
                    Text("Division")
                }
                .tag(4)
        }
    }
}

#Preview {
    ContentView()
}
