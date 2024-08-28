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

@main
struct OpenWindowApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .defaultSize(width: 500, height: 500)
        WindowGroup(id: "SecondView") {
            SecondView()
        }
        .defaultSize(CGSize(width: 300, height: 200))
//        @available(visionOS 2.0, *)
//            .defaultWindowPlacement { _, content in
//                if let mainWindow = content.windows.first {
//                    return WindowPlacement(.leading(mainWindow))
//                }
//                return WindowPlacement(.none)
//            }
    }
}
