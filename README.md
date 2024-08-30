# OpenWindow

Sample code on opening windows in a visionOS app. Based on the sample from [StepInto.vision Open and Close Windows...](https://stepinto.vision/example-code/open-and-close-windows-in-visionos-with-swiftui/)

## Steps

<!-- start:code block -->

# 1 - Create new visionOS project add second window in the App file.

WindowGroup(id: "DetailView") {
            DetailView()
        }
        
# 2 - add env vars to open and dismiss window

    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) private var dismissWindow


# 3 - Add or reuse the VStack
# Add 2 buttons in HStack

       VStack(spacing: 24) {
            Text("Window Garden 🌸")
                .font(.extraLargeTitle2)
            Text("Open and Close a window with an id value of 'DetailView'")
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

# 4 - update window sizes, add ID to WindowGroup

        WindowGroup {
            ContentView()
        }
        .defaultSize(width: 500, height: 500)
        WindowGroup(id: "DetailView") {
            DetailView()
        }
        .defaultSize(CGSize(width: 300, height: 200))
        
# 5 - pass data

# DataModel

import SwiftUI

struct SecondItem: Identifiable, Codable, Hashable {
    var id: UUID = UUID()
    let name: String
    let icon: String
}

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

# 6 - Add env var to ContentView

    @Environment(SecondData.self) var secondData

# 7 - add List with Button

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

# 8 - rename second view Detail View

<!-- end:code block -->