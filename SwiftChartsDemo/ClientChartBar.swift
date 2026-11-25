//
//  ClientChartBar.swift
//  SwiftChartsDemo
//
//  Created by Almira Khafizova on 25.11.26.
//

import SwiftUI
import Charts

struct ClientChartBar: View {
  var body: some View {
    Chart(Payment.hourlyRates.sorted(by: <), id: \.key) { rate in
      BarMark(
        x: .value("Client", rate.key),
        y: .value("Rate", rate.value)
      )
    }
    .frame(height: 220)
  }
}
#Preview {
  ClientChartBar()
}
