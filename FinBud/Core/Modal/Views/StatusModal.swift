//
//  StatusModal.swift
//  FinBud
//
//  Created by Kranti on 2024/6/19.
//

import SwiftUI

struct StatusModal: View {
  @Binding var submission: SubmissionState?

  var body: some View {
    ZStack {
      if let submission = submission {
        switch submission {
        case SubmissionState.error:
          Rectangle()
            .foregroundStyle(.red)
            .frame(width: 200, height: 80)
            .cornerRadius(8)
          Text("There was an error with your entry.")
            .font(.system(size: 16, weight: .light))
            .frame(width: 180, height: 60)
            .foregroundStyle(Color(.white))
        case SubmissionState.success:
          Rectangle()
            .foregroundStyle(Color(.systemGray))
            .frame(width: 200, height: 80)
            .cornerRadius(8)
          Text("Your entry was submitted.")
            .font(.system(size: 16, weight: .light))
            .frame(width: 180, height: 60)
            .foregroundStyle(Color(.white))
        case SubmissionState.pending:
          Rectangle()
            .foregroundStyle(Color(.systemGray))
            .frame(width: 200, height: 80)
            .cornerRadius(8)
          Text("submitting...")
            .font(.system(size: 16, weight: .light))
            .frame(width: 180, height: 60)
            .foregroundStyle(Color(.white))
        case SubmissionState.idle:
          EmptyView()
        }
      }
    }
  }
}

#Preview {
  StatusModal(submission: .constant(SubmissionState.idle))
}
