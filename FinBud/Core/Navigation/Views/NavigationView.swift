//
//  NavigationView.swift
//  FinBud
//
//  Created by Kranti on 2024/6/25.
//

import SwiftUI

struct NavigationView: View {
  @Binding var navigation: NavigationState

  var body: some View {
    HStack {
      // CENTRAL
      Button(action: { navigate(destination: .central) }) {
        Text("Central")
          .font(.system(size: 18, weight: navigation == .central ? .semibold : .medium))
          .foregroundStyle(Color(.systemGray))

      }
      .padding(.trailing, 15)

      // ANALYSIS
      Button(action: { navigate(destination: .analysis) }) {
        Text("Analysis")
          .font(.system(size: 18, weight: navigation == .analysis ? .semibold : .medium))
          .foregroundStyle(Color(.systemGray))
      }
    }
  }

  private func navigate(destination: NavigationState) {
    navigation = destination
  }
}
