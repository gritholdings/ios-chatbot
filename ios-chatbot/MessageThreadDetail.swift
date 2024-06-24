//
//  MessageThreadDetail.swift
//  ios-chatbot
//
//  Created by Edward Wong on 6/24/24.
//

import Foundation
import SwiftUI

struct MessageThreadDetail: View {
    let messageThread: MessageThread
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(messageThread.title)
                    .font(.title)
            }
        }
    }
}
