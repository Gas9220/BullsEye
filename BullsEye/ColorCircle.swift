//
//  ColorCircle.swift
//  BullsEye
//
//  Created by Gaspare Monte on 16/01/24.
//

import SwiftUI

struct ColorCircle: View {
    let rgb: RGB
    let size: CGFloat

    var body: some View {
        Circle()
            .fill(Color(rgbStruct: rgb))
            .frame(width: size, height: size)
    }
}

#Preview {
    ColorCircle(rgb: RGB(), size: 300)
}
