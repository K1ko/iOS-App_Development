//
//  File.swift
//  fdsds
//
//  Created by Kristián Červenka on 13/12/2022.
//


import Foundation

// Define a struct to represent a currency
struct Currency {
  let code: String
  let name: String
  let symbol: String
}

// Define a dictionary of known currencies and their conversion rates
let rates: [Currency: Double] = [
  Currency(code: "USD", name: "United States Dollar", symbol: "$"): 1.0,
  Currency(code: "EUR", name: "Euro", symbol: "€"): 1.18,
  Currency(code: "GBP", name: "British Pound", symbol: "£"): 1.32
]

// Define a function to convert a given amount from one currency to another
func convert(amount: Double, from fromCurrency: Currency, to toCurrency: Currency) -> Double {
  guard let fromRate = rates[fromCurrency], let toRate = rates[toCurrency] else {
    return 0.0
  }
  return (amount / fromRate) * toRate
}

// Test the converter with some sample input
let amount = 100.0
let fromCurrency = Currency(code: "USD", name: "United States Dollar", symbol: "$")
let toCurrency = Currency(code: "EUR", name: "Euro", symbol: "€")
print(convert(amount: amount, from: fromCurrency, to: toCurrency)) // should print 118.0
