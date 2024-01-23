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
                .accessibilityHidden(true)
            Slider(value: $value)
                .tint(trackColor)
                .accessibilityValue(String(describing: trackColor) + " " +  String(Int(value * 255)))
            Text("255")
                .accessibilityHidden(true)
        }
        .font(.subheadline)
        .padding(.horizontal)
    }
}

#Preview {
    ColorSlider(value: .constant(0.5), trackColor: .red)
}
