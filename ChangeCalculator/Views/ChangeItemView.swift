//
//  ChangeItemView.swift
//  ChangeCalculator
//
//  Created by Neil Shah on 2025-02-27.
//

import SwiftUI

struct ChangeItemView: View {
    
    // MARK: Stored Properties
    let change: Change
    
    // MARK: Computed Properties
    var body: some View {
        HStack {
            
            
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
    }
}

#Preview {
    ChangeItemView(change: Change(amountInCents: 250))
        .padding()
}
