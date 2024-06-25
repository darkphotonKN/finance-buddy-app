//
//  MonthlyAnalysisView.swift
//  FinBud
//
//  Created by Kranti on 2024/6/25.
//

import SwiftData
import SwiftUI

struct MonthlyAnalysisView: View {
  @Query var spendingEntries: [SpendingEntry]
  let dateFormatter: DateFormatter

  init() {
    self.dateFormatter = DateFormatter()
    // format date style
    self.dateFormatter.dateStyle = .short
    // remove time
    self.dateFormatter.timeStyle = .none
  }

  var body: some View {
    VStack {
      ForEach(spendingEntries) { spendingEntry in
        HStack {
          Text(String(spendingEntry.amount))
            .font(.system(size: 18, weight: .light))
          Spacer()
          Text(dateFormatter.string(from: spendingEntry.date))
            .font(.system(size: 18, weight: .light))
        }
      }
    }.frame(width: 200)

  }
}
