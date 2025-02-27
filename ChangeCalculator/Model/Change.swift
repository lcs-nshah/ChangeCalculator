//
//  Change.swift
//  ChangeCalculator
//
//  Created by Neil Shah on 2025-02-27.
//

import Foundation

struct Change: Identifiable {
    
    // MARK: Stored Properties
    let id = UUID()
    var amountInCents: Int
    
    // MARK: Computed Properties
    var numberOfToonies: Int {
        return amountInCents / 200
    }
    
    var numberOfLoonies: Int {
        return (amountInCents - numberOfToonies * 200) / 100
    }
    
    var numberOfQuarters: Int {
        return ((amountInCents - numberOfToonies * 200) - numberOfLoonies * 100) / 25
    }
    
    var numberOfDimes: Int {
        return (((amountInCents - numberOfToonies * 200) - numberOfLoonies * 100) - numberOfQuarters * 25) / 10
    }
    
    var numberOfNickels: Int {
        return (((amountInCents - numberOfToonies * 200) - numberOfLoonies * 100) - numberOfQuarters * 25
                - numberOfDimes * 10) / 5
    }
    
    var numberOfPennies: Int {
        return (((amountInCents - numberOfToonies * 200) - numberOfLoonies * 100) - numberOfQuarters * 25
                - numberOfDimes * 10) - numberOfNickels * 5
    }
    
    var totalNumberOfCoins: Int {
        return numberOfToonies + numberOfLoonies + numberOfQuarters + numberOfDimes + numberOfNickels + numberOfPennies
    }
}
