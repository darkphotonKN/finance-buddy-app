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
        Spacer()

        switch navigation {
        // MARK: Central View
        case .central:

          // MARK: Main Title
          Text("FinBud").font(.system(size: 38, weight: .medium)).foregroundStyle(
            Color(.systemGray)
          )
          .padding(.bottom, 40)

          // MARK: Core
          AddEntryView(entry: $entry, submission: $submission)

        // MARK: Analysis View
        case .analysis:
          MonthlyAnalysisView()
        }

        Spacer()
        // MARK: Status Area
        StatusModal(submission: $submission)
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
      print("Entry amount:", entry.amount)
      print("Entry date:", entry.date)
    }
  }
}
