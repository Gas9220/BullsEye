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
    @State var showScore = false

    var body: some View {
        VStack {
            Circle()
                .fill(Color(rgbStruct: game.target))

            if !showScore {
                Text("R: ??? G: ??? B: ???")
                    .padding()
            } else {
                Text(game.target.intString())
                    .padding()
            }

            Circle()
                .fill(Color(rgbStruct: guess))

            Text(guess.intString())
                .padding()

            ColorSlider(value: $guess.red, trackColor: .red)
            ColorSlider(value: $guess.green, trackColor: .green)
            ColorSlider(value: $guess.blue, trackColor: .blue)

            Button("Hit me!") {
                showScore = true
                game.check(guess: guess)
            }
            .alert(Text("Your Score"), isPresented: $showScore) {
                Button("OK") {
                    game.startNewRound()
                    guess = RGB()
                }
            } message: {
                Text(String(game.scoreRound))
            }
        }
    }
}

#Preview {
    ContentView(guess: RGB())
}
