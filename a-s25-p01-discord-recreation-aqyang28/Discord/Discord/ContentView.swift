//
//  ContentView.swift
//  Discord
//
//  Created by Ryder Klein on 2/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ChannelView(channel: .ourHouse)
                // Forces Dark Mode
                .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
