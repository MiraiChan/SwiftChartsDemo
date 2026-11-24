//
//  Payment.swift
//  SwiftChartsDemo
//
//  Created by Almira Khafizova on 24.11.26.
//

import Foundation

struct Payment: Identifiable {
  let id = UUID()
  let date: Date
  let client: String
  let amount: Double
}

extension Payment {
  static let hourlyRates = [
    "Northwind": 95.0,
    "Bluebird": 60.0,
    "Jupiter": 140.0,
    "Atlas": 45.0,
  ]
}

