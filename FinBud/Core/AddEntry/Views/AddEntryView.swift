//
//  AddEntryView.swift
//  FinBud
//
//  Created by Kranti on 2024/6/18.
//

import SwiftUI

struct AddEntryView: View {
  @Binding var entry: String
  @Binding var submission: SubmissionState?

  let placeholder = "Enter Spending"

  // adds entered monetery value for calculation
  func addEntry() {
    // check if entry is a number

    let numberEntry = Int(entry)
    print("numberEntry: \(numberEntry)")

    if numberEntry == nil {
      print("numberEntry was an error: \(numberEntry)")
      // show submission failure
      print("@DEBUG entry type was incorrect.")
      submission = SubmissionState.error

      return
    }
    print("numberEntry was a success: \(numberEntry)")

    // reset entry value
    entry = ""

    // show submission success
    SubmissionState.success
  }

  var body: some View {
    VStack {
      TextField("", text: $entry)
        .keyboardType(.numberPad)
        .frame(width: 140)
        .foregroundStyle(Color(.darkGray))
        .font(.system(size: 18, weight: .light))
        .background {
          ZStack {
            Text(entry.count > 0 ? "" : placeholder)
              .foregroundStyle(Color(.lightGray))
              .font(.system(size: 18, weight: .light))
          }
        }

      Button(action: addEntry) {
        Text("Add Entry").font(.system(size: 18, weight: .light))
      }
      .foregroundStyle(Color(.systemGray))
    }
  }
}

#Preview {
  AddEntryView(entry: .constant(""), submission: .constant(SubmissionState.idle))
}
