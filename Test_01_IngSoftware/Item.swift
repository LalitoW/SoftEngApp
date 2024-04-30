//
//  Item.swift
//  Test_01_IngSoftware
//
//  Created by iOS Lab on 16/04/24.
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
