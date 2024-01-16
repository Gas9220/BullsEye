//
//  ContentView.swift
//  BullsEye
//
//  Created by Gaspare Monte on 16/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var game = Game()
    @State var guess: RGB

    var body: some View {
        VStack {
            Color(rgbStruct: game.target)
            Text("R: ??? G: ??? B: ???")
                .padding()

            Color(rgbStruct: guess)
            Text(guess.intString())
                .padding()

            ColorSlider(value: $guess.red, trackColor: .red)
            ColorSlider(value: $guess.green, trackColor: .green)
            ColorSlider(value: $guess.blue, trackColor: .blue)

            Button("Hit me!") {

            }
        }
    }
}

#Preview {
    ContentView(guess: RGB())
}
