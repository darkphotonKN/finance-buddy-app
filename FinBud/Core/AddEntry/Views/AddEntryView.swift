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

    // send entry off to be stored

    // reset entry value
    entry = ""

    // show submission success
    submission = SubmissionState.success
  }

  var body: some View {
    VStack {
      TextField("", text: $entry)
        .keyboardType(.numberPad)
        .frame(width: 140)
        .padding([.leading, .trailing, .bottom, .top], 7)
        .foregroundStyle(Color(.darkGray))
        .font(.system(size: 18, weight: .light))
        .background {
          ZStack {
            RoundedRectangle(cornerRadius: 4)
              .stroke(Color.gray, lineWidth: 1)
            Text(entry.count > 0 ? "" : placeholder)
              .foregroundStyle(Color(.lightGray))
              .font(.system(size: 18, weight: .light))
          }
        }

      HStack {
        Button(action: addEntry) {
          Text("add entry").font(.system(size: 18, weight: .light))
        }
        .foregroundStyle(Color(.systemGray))

        Image(systemName: "plus.app")
          .foregroundStyle(Color(.lightGray))
      }
      .padding(.top, 17)
    }
  }
}

#Preview {
  AddEntryView(entry: .constant(""), submission: .constant(SubmissionState.idle))
}
