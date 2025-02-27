//
//  ChangeViewModel.swift
//  ChangeCalculator
//
//  Created by Neil Shah on 2025-02-27.
//

import Foundation

@Observable
class ChangeViewModel {
    
    // MARK: Stored Properties
    var resultHistory: [Change] = []
    var providedAmountInCents: String
    var recoverySuggestion: String = ""
    
    // MARK: Computed Properties
    var change: Change? {
        
        // Check if the string in providedAmountInCents can be converted into Int and is greater than 0
        guard let amountInCents = Int(providedAmountInCents), amountInCents > 0 else {
            
            recoverySuggestion = "Please enter a positive integer for the amount in cents"
            
            return nil
        }
        
        // Return an instance of the model
        recoverySuggestion = ""
        
        return Change(amountInCents: amountInCents)
    }
    
    // MARK: Initilizer
    init(
        providedAmountInCents: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedAmountInCents = providedAmountInCents
        self.recoverySuggestion = recoverySuggestion
    }
    
    // MARK: Function(s)
    func saveResult() {
        if let change = self.change {

            self.resultHistory.insert(change, at: 0)
        }
    }

    func clearResults() {
        self.resultHistory.removeAll()
    }
}
