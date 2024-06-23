//
//  View.swift
//  FinBud
//
//  Created by Kranti on 2024/6/18.
//

import SwiftUI

struct MainView: View {
  @State var entry: String = ""
  @State var submission: SubmissionState?

  var body: some View {

    ZStack {
      // Background
      Color(.white).ignoresSafeArea()

      VStack {
        Spacer()

        // MARK: Main Title
        Text("FinBud").font(.system(size: 38, weight: .medium)).foregroundStyle(Color(.systemGray))
          .padding(.bottom, 40)

        // MARK: Core
        AddEntryView(entry: $entry, submission: $submission)

        Spacer()

        // MARK: Error Area
        StatusModal(submission: $submission)

      }.padding([.top, .bottom], 25)
    }
  }
}

#Preview {
  MainView()
}
