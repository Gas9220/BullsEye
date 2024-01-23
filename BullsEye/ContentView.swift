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

    let circleSize: CGFloat = 0.275
    let labelHeight: CGFloat = 0.06
    let labelWidth: CGFloat = 0.53
    let buttonWidth: CGFloat = 0.87

    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color.element
                    .ignoresSafeArea()

                VStack {
                    ColorCircle(rgb: game.target, size: proxy.size.height * circleSize)

                    if !showScore {
                        BevelText(text: "R: ??? G: ??? B: ???",
                                  width: proxy.size.width * labelWidth,
                                  height: proxy.size.height * labelHeight)
                        .accessibilityLabel("Target red, green, blue, values you must guess")
                        .padding()
                    } else {
                        BevelText(text: game.target.intString(),
                                  width: proxy.size.width * labelWidth,
                                  height: proxy.size.height * labelHeight)
                        .padding()
                    }

                    ColorCircle(rgb: guess, size: proxy.size.height * circleSize)

                    BevelText(text: guess.intString(),
                              width: proxy.size.width * labelWidth,
                              height: proxy.size.height * labelHeight)
                    .accessibilityLabel("Your guess: " + guess.accString())
                    .accessibilitySortPriority(2)
                    .padding()

                    ColorSlider(value: $guess.red, trackColor: .red)
                        .accessibilitySortPriority(5)
                    ColorSlider(value: $guess.green, trackColor: .green)
                        .accessibilitySortPriority(4)
                    ColorSlider(value: $guess.blue, trackColor: .blue)
                        .accessibilitySortPriority(3)

                    Button("Hit me!") {
                        showScore = true
                        game.check(guess: guess)
                    }
                    .accessibilitySortPriority(1)
                    .buttonStyle(
                        NeuButtonStyle(width: proxy.size.width * buttonWidth,
                                       height: proxy.size.height * labelHeight)
                    )
                    .sheet(isPresented: $showScore) {
                        SuccessView(game: $game, score: game.scoreRound, target: game.target, guess: $guess)
                    }
                }
                .font(.headline)
            }
        }
    }
}

#Preview {
    ContentView(guess: RGB())
}
