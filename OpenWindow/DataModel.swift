//
// ---------------------------- //
// Original Project: OpenWindow
// Created on 2024-08-28 by Tim Mitra
// Mastodon: @timmitra@mastodon.social
// Twitter/X: timmitra@twitter.com
// Web site: https://www.it-guy.com
// ---------------------------- //
// Copyright © 2024 iT Guy Technologies. All rights reserved.


import SwiftUI

struct SecondItem: Identifiable, Codable, Hashable {
    var id: UUID = UUID()
    let name: String
    let icon: String
}

//@MainActor
@Observable
class SecondData {
    var items: [SecondItem] = [
        SecondItem(name: "Puppy", icon: "🐶"),
        SecondItem(name: "Kitty", icon: "🐱"),
        SecondItem(name: "Duck", icon: "🦆"),
        SecondItem(name: "Poop", icon: "💩"),
        SecondItem(name: "Bang", icon: "💥")
    ]
}

//#Preview {
//    SecondItem()
//}
