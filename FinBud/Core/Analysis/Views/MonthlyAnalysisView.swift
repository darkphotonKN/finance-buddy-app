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

  var body: some View {
    // Spending Entries
    ForEach(spendingEntries, id: \.self) { spendingEntry in
      Text(String(spendingEntry.amount))
    }
  }
}
