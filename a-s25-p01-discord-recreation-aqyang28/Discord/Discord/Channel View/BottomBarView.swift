//
//  BottomBarView.swift
//  Discord
//
//  Created by Ryder Klein on 2/13/25.
//

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack(spacing: 8) {
            Circle()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color.discordToolbarButtonBackground)
                .overlay {
                    Image(systemName: "plus")
                        .foregroundStyle(.white)
                        .fontDesign(.rounded)
                }

            Circle()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color.discordToolbarButtonBackground)
                .overlay {
                    Image(systemName: "gift.fill")
                        .foregroundStyle(.white)
                }

            HStack {
                Text("Message #our-house")
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .foregroundStyle(.secondary)
                    .fontDesign(.rounded)
                Spacer()
                Image(systemName: "face.smiling")
                    .foregroundStyle(.white)
            }
            .padding(10)
            .background(Color.discordToolbarButtonBackground, in: Capsule())

            Circle()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color.discordToolbarButtonBackground)
                .overlay {
                    Image(systemName: "mic.fill")
                        .foregroundStyle(.white)
                }
        }
    }
}

#Preview {
    BottomBarView()
        .preferredColorScheme(.dark)
}
