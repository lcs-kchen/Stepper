//
//  Division.swift
//  Stepper
//
//  Created by Haowen Chen on 2025-02-14.
//

import SwiftUI
 
struct DivisionView: View {
    
    // MARK: Stored properties
    @State var first: Int = 1
    @State var second: Int = 1
    
    // MARK: Computed properties
    var result: Int {
        return first / second
    }
    
    var body: some View {
        HStack {
            
            Spacer()
            
            VStack(alignment: .listRowSeparatorTrailing) {
 
                Text("\(first)")
                    .font(.system(size: 96))
                Stepper(value: $first, label: {
                    Text("select first number")
                })
                
                HStack {
                    Text("/")
                        .font(.system(size: 44))
                    Spacer()
                    Text("\(second)")
                        .font(.system(size: 96))
                }
                Stepper(value: $second, label: {
                    Text("select second number")
                })
 
                Text("\(result)")
                    .font(.system(size: 96))
            }
                        
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DivisionView()
}
