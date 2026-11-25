//
//  ContentView.swift
//  SwiftChartsDemo
//
//  Created by Almira Khafizova on 24.11.26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(spacing: 24) {
          GroupBox("Per client") {
            ClientChartBar()
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
