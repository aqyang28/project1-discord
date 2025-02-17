//
//  User.swift
//  Discord
//
//  Created by Ryder Klein on 2/13/25.
//

import Foundation

struct User {
    let name: String
    let imageName: String
}

extension User {
    static var emma = User(name: "Emma Sputnik", imageName: "emma")
    static var matt = User(name: "Matt Whitlock", imageName: "matt")
}
