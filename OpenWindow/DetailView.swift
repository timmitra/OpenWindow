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

struct DetailView: View {
    @Binding var item: SecondItem?
    
    var body: some View {
        if let item = item {
            VStack{
                Text(item.icon)
                Text(item.name)
            }
        } else {
            Text("No item found!")
        }
    }
}

#Preview {
    DetailView(item: .constant(SecondItem(name: "Puppy", icon: "🐶")))
}
