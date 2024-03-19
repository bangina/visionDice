//
//  visionDiceApp.swift
//  visionDice
//
//  Created by Inah on 3/19/24.
//

import SwiftUI

@main
struct visionDiceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
