//
//  CurrencyToStringConversion.swift
//  DMExpenseTrackerBasic
//
//  Created by Daniel Beilfuss on 1/29/24.
//

import Foundation

struct CurrencyToStringConversion {
    
    static func convert(_ amount: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        
        let nsAmount = NSNumber(value: amount)
        if let stringAmount = formatter.string(from: nsAmount) {
            return stringAmount
        }
        
        print("conversion error converting \(amount) to string")
        return "N/A"
    }
    
}
