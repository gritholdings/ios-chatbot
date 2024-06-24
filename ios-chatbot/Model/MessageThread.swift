//
//  Thread.swift
//  ios-chatbot
//
//  Created by Edward Wong on 6/24/24.
//

import Foundation
import SwiftUI

struct MessageThread: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    
    static func loadMessageThreads() -> [MessageThread] {
        let messageThreads: [MessageThread] = DataLoader.load("messageThreadData.json")
        return messageThreads
    }
}
