import Foundation
//
//  SpendingEntry.swift
//  FinBud
//
//  Created by Kranti on 2024/6/24.
//
import SwiftData

@Model
class SpendingEntry: Identifiable {
  var amount: Int
  var date: Date

  init(amount: Int, date: Date) {
    self.amount = amount
    self.date = date
  }
}
