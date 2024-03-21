//
//  visionDiceApp.swift
//  visionDice
//
//  Created by Inah on 3/19/24.
//

import SwiftUI

@Observable 
class DiceData{
    var rolledNumber = 0
}

@main
struct visionDiceApp: App {
    @State var diceData = DiceData()
    var body: some Scene {
        WindowGroup {
            ContentView(diceData: diceData)
        }
        .defaultSize(width: 100, height: 100)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView(diceData: diceData)
        }
    }
}
