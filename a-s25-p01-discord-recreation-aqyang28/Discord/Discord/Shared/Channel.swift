//
//  Channel.swift
//  Discord
//
//  Created by Ryder Klein on 2/13/25.
//

import SwiftUI

struct Channel {
    let title: String
    let message: [Message]
}

extension Channel {
    static var ourHouse: Channel {
        Channel(title: "our-house", message: Message.ourHouse)
    }
}
