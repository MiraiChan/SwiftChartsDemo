//
//  ClientChartBar.swift
//  SwiftChartsDemo
//
//  Created by Almira Khafizova on 25.11.26.
//

import SwiftUI
import Charts

struct ClientChartBar: View {
  let payments: [Payment]
  
  var body: some View {
    Chart(payments) { payment in
      BarMark(
        x: .value("Client", payment.client),
        y: .value("Rate", payment.amount)
      )
    }
    .frame(height: 220)
  }
}
#Preview {
  ClientChartBar(payments: Payment.samples)
}
