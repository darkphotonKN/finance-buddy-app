//
//  SpendingEntry+CoreDataProperties.swift
//  FinBud
//
//  Created by Kranti on 2024/6/24.
//
//

import Foundation
import CoreData


extension SpendingEntry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SpendingEntry> {
        return NSFetchRequest<SpendingEntry>(entityName: "SpendingEntry")
    }

    @NSManaged public var amount: Int64
    @NSManaged public var date: Date?

}

extension SpendingEntry : Identifiable {

}
