//
//  ContentView.swift
//  ChangeCalculator
//
//  Created by Neil Shah on 2025-02-27.
//

import SwiftUI

struct ChangeView: View {
    
    // MARK: Stored Properties
    @State var viewModel = ChangeViewModel()
    
    // MARK: Computed Properties
    var body: some View {
        VStack {
            
            // MARK: INPUT
            Text("Amount In Cents:")
//                .font
            
            TextField("E.g. 250", text: $viewModel.providedAmountInCents)
            
            
            
        }
        .padding()
        .navigationTitle("Change Calculator")
    }
}

#Preview {
    NavigationStack {
        ChangeView()
    }
}
