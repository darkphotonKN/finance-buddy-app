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
      Button(action: { navigate(destination: .central) }) {
        Text("Central")
      }
      Button(action: { navigate(destination: .analysis) }) {
        Text("Analysis")
      }
    }
  }

  private func navigate(destination: NavigationState) {
    navigation = destination
  }
}
