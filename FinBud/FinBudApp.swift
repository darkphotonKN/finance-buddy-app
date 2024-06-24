//
//  FinBudApp.swift
//  FinBud
//
//  Created by Kranti on 2024/6/18.
//

import SwiftData
import SwiftUI

@main
struct FinBudApp: App {

  var body: some Scene {
    WindowGroup {
      MainView()
    }.modelContainer(for: SpendingEntry.self)
  }
}
