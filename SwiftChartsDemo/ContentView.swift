//
//  ContentView.swift
//  SwiftChartsDemo
//
//  Created by Almira Khafizova on 24.11.26.
//

import SwiftUI

struct ContentView: View {
  private let payments = Payment.samples
  
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(spacing: 24) {
          GroupBox("Per client") {
            ClientChartBar(payments: payments)
          }
        }
        .padding()
      }
    }
    .navigationTitle("ChartLab")
  }
}

#Preview {
  ContentView()
}
