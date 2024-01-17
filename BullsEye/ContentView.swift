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
        ZStack {
            Color.element
                .ignoresSafeArea()

            VStack {
                ColorCircle(rgb: game.target, size: 200)

                if !showScore {
                    BevelText(text: "R: ??? G: ??? B: ???", width: 200, height: 48)
                        .padding()
                } else {
                    BevelText(text: game.target.intString(), width: 200, height: 48)
                        .padding()
                }

                ColorCircle(rgb: guess, size: 200)

                BevelText(text: guess.intString(), width: 200, height: 48)
                    .padding()

                ColorSlider(value: $guess.red, trackColor: .red)
                ColorSlider(value: $guess.green, trackColor: .green)
                ColorSlider(value: $guess.blue, trackColor: .blue)

                Button("Hit me!") {
                    showScore = true
                    game.check(guess: guess)
                }
                .buttonStyle(NeuButtonStyle(width: 327, height: 48))
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
}

#Preview {
    ContentView(guess: RGB())
}
