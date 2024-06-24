//
//  ContentView.swift
//  ios-chatbot
//
//  Created by Edward Wong on 6/24/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var selectedTab = 1
    @State private var messageThreads: [MessageThread] = []

    var body: some View {
        Text("My Chatbot")
        TabView(selection: $selectedTab) {
            MessageThreadView(messageThreads: $messageThreads)
                .tabItem {
                    Label("All Chats", systemImage: "wrench.and.screwdriver")
                }
                .onAppear {
                    messageThreads = MessageThread.loadMessageThreads()
                }
                .tag(1)
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
                .tag(2)
        }
    }
}

struct MessageThreadView: View {
    @Binding var messageThreads: [MessageThread]
    var body: some View {
        VStack {
            NavigationView {
                List(messageThreads) { messageThread in
                    NavigationLink(destination: MessageThreadDetail(messageThread: messageThread)) {
                        VStack(alignment: .leading) {
                            Text(messageThread.title)
                        }
                    }
                }
            }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Account Settings")
        }
    }
}

#Preview {
    ContentView()
}
