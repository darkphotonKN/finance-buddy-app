//
//  View.swift
//  FinBud
//
//  Created by Kranti on 2024/6/18.
//

import SwiftData
import SwiftUI

struct MainView: View {
  @Query var spendingEntries: [SpendingEntry]
  @State var entry: String = ""
  @State var submission: SubmissionState?
  @State var navigation: NavigationState = .central

  var body: some View {

    ZStack {
      // Background
      Color(.white).ignoresSafeArea()
        // hides keyboard when clicking on background during input selection
        .onTapGesture {
          hideKeyboard()
        }

      VStack {
        // MARK: App Navigation
        NavigationView(navigation: $navigation)

        switch navigation {
        // MARK: Central View
        case .central:
          Spacer()

          // MARK: Main Title
          Text("FinBud").font(.system(size: 38, weight: .medium)).foregroundStyle(
            Color(.systemGray)
          )
          .padding(.bottom, 40)

          // MARK: Core
          AddEntryView(entry: $entry, submission: $submission)

          Spacer()

          // MARK: Error Area
          StatusModal(submission: $submission)

        // MARK: Analysis View
        case .analysis:
          MonthlyAnalysisView()
        }

      }.padding([.top, .bottom], 25)
    }.onAppear {
      logEntries()
    }.onChange(of: spendingEntries) {
      logEntries()
    }

  }

  private func logEntries() {
    print("Logging entries...")

    for entry in spendingEntries {
      print("Entry \(index):", entry.amount)
    }
  }
}
