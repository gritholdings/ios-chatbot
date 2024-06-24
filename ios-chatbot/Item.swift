//
//  Item.swift
//  ios-chatbot
//
//  Created by Edward Wong on 6/24/24.
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
