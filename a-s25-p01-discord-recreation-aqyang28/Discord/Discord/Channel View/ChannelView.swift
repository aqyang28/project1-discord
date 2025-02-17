//
//  ChannelView.swift
//  Discord
//
//  Created by Ryder Klein on 2/13/25.
//

import SwiftUI

struct ChannelView: View {
    let channel: Channel

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // this spacing is cooked help
                messageList
                    .padding(.bottom, 7)
                blackDivider
                    .padding(.bottom, 8)
                bottomBar
            }
            // check padding btwn elements. .padding(<value> + 8)?
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Image(systemName: "line.3.horizontal")
                        .fontWeight(.semibold)
                        .padding(.leading, 8)
                        .padding(.trailing, 12)
                    Image(systemName: "number")
                        .foregroundStyle(.secondary)
                    Text("our-house")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .fontDesign(.rounded)
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Image(systemName: "magnifyingglass")
                        .bold()
                        .padding(.horizontal, 20)
                    Image(systemName: "person.2.fill")
                        .rotation3DEffect(.degrees(180), axis: (0, 1, 0))
                        .padding(.trailing, 6)
                }
            }
            .background(Color.discordNavigationBar)
        }
    }

    // @ViewBuilder tells Swift that we should be able to
    // use the SwiftUI syntax of just throwing Views in order.
    // var body is a ViewBuilder by default but you have to manually
    // specify on other methods.
    @ViewBuilder
    private var messageList: some View {
        // TODO: Implement Message `List`
        let messages = channel.message
        List(messages) { message in
            MessageView(message: message)
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
    }

    @ViewBuilder
    private var blackDivider: some View {
        Rectangle()
            .fill(Color.black)
            .frame(height: 1)
    }

    @ViewBuilder
    private var bottomBar: some View {
        // TODO: Use BottomBarView created elsewhere
        BottomBarView()
            .padding(.horizontal, 12)
    }
}

#Preview {
    ChannelView(channel: .ourHouse)
        .preferredColorScheme(.dark)
}
