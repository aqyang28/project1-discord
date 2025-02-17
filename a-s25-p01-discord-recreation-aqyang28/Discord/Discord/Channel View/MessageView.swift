//
//  MessageView.swift
//  Discord
//
//  Created by Ryder Klein on 2/13/25.
//

import SwiftUI

struct MessageView: View {
    let message: Message

    var body: some View {
        HStack {
            Image(message.sender.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40) // how to change this to dynamic size?

            VStack(alignment: .leading) {
                HStack(alignment: .firstTextBaseline, spacing: 8) {
                    Text(message.sender.name)
                        .font(.subheadline)
                        .bold()
                        .foregroundStyle(Color.discordGreen)
                        .fontDesign(.rounded)
                    Text(message.time)
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundStyle(.secondary)
                        .fontDesign(.rounded)
                }
                Text(message.body)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundStyle(.white)
                    .fontDesign(.rounded)
                    .multilineTextAlignment(.leading)
            }
        }
        .listRowBackground(Color.discordBackground)
    }
}

#Preview {
    MessageView(message: .example)
        .preferredColorScheme(.dark)
}
