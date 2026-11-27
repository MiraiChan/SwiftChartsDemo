//
//  EarningsTrendsChart.swift
//  SwiftChartsDemo
//
//  Created by Almira Khafizova on 27.11.26.
//

import SwiftUI
import Charts

struct EarningsTrendsChart: View {
  let payments = [Payment]
  
  var body: some View {
    Chart {
      ForEach(payments) { Payment in
        LineMark(
          x: .value("Day", payment.date, unit: .day),
          y: .value("Amount", payment.amount)
        )
      }
    }
    .frame(height: 220)
  }
}

#Preview {
  EarningsTrendsChart(payments: Payment.samples)
}
