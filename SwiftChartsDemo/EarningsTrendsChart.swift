//
//  EarningsTrendsChart.swift
//  SwiftChartsDemo
//
//  Created by Almira Khafizova on 27.11.26.
//

import SwiftUI
import Charts

struct EarningsTrendsChart: View {
  let payments: [Payment]
  
  private var average: Double {
    payments.map(\.amount).reduce(0, +) / Double(payments.count)
  }
  
  var body: some View {
    Chart {
      ForEach(payments) { payment in
        LineMark(
          x: .value("Day", payment.date, unit: .day),
          y: .value("Amount", payment.amount)
        )
        .interpolationMethod(.catmullRom)
        
        AreaMark(
          x: .value("Day", payment.date, unit: .day),
          y: .value("Amount", payment.amount)
        )
        .interpolationMethod(.catmullRom)
        .foregroundStyle(.blue.opacity(0.15))
        
        RuleMark(x: .value("Average", average))
          .foregroundStyle(.orange)
          .lineStyle(StrokeStyle(lineWidth: 1, dash: [5, 3]))
          .annotation(position: .top, alignment: .trailing) {
            Text("Average \(average, format: .currency(code: "USD").precision(.fractionLength(0)))")
              .font(.caption)
              .foregroundStyle(.orange)
          }
      }
    }
    .frame(height: 220)
  }
}

#Preview {
  EarningsTrendsChart(payments: Payment.samples)
}
