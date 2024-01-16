//
//  ContentView.swift
//  BullsEye
//
//  Created by Gaspare Monte on 16/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color(red: 0.5, green: 0.5, blue: 0.5)
            Text("R: ??? G: ??? B: ???")
                .padding()

            Color(red: 0.5, green: 0.5, blue: 0.5)
            Text("R: 204 G: 76 B: 178")
                .padding()

            Slider(value: .constant(0.5))

            Button("Hit me!") {

            }
        }
    }
}

#Preview {
    ContentView()
}
