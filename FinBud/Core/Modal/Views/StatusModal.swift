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

            Color(.systemGray)
            if let submission = submission {
                switch(submission) {
                case SubmissionState.error: 
                    Text("There was an error with your entry.")
                        .font(.system(size: 18, weight: .light))
                        .foregroundStyle(Color(.white))
                case SubmissionState.success:
                    Text("Your entry was submitted.")
                case SubmissionState.pending:
                    Text("submitting...")
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
