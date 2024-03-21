//
//  ContentView.swift
//  visionDice
//
//  Created by Inah on 3/19/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    var diceData: DiceData
    var body: some View {
        VStack {
            Text(diceData.rolledNumber == 0 ?  "🎲" : "\(diceData.rolledNumber)")
            .foregroundStyle(.yellow)
            .font(.custom("Manlo", size : 100))
            .bold()
        }
        .padding()
        .task{
            // open immersive space immediately when the app launches
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(diceData: DiceData())
}
