//
//  Item.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 29/08/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
