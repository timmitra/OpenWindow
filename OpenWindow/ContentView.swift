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
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @Environment(SecondData.self) var secondData
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Window Garden 🌸")
                .font(.extraLargeTitle2)
            List(secondData.items) { item in
                HStack {
                    Button {
                        openWindow(id: "DetailView", value: item)
                    } label: {
                        HStack {
                            Text(item.icon)
                            Text(item.name)
                        }
                    }

                }
            }
            Text("Open and Close a window with an id value of 'Second View'")
            HStack {
                Button {
                    openWindow(id: "DetailView")
                } label: {
                    Label("Open Window", systemImage: "inset.filled.center.rectangle.badge.plus")
                }
                Button {
                    dismissWindow(id: "DetailView")
                } label: {
                    Label("Close Window", systemImage: "xmark.circle")
                }

            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
       // .environment(AppModel())
}
