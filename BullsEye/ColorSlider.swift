//
//  ColorSlider.swift
//  BullsEye
//
//  Created by Gaspare Monte on 16/01/24.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var trackColor: Color

    var body: some View {
        HStack {
            Text("0")

            Slider(value: $value)
                .tint(trackColor)

            Text("255")
        }
        .padding(.horizontal)
    }
}

#Preview {
    ColorSlider(value: .constant(0.5), trackColor: .red)
}
