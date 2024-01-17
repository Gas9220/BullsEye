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
        ZStack {
            Circle()
                .fill(Color.element)
                .northWestShadow()

            Circle()
                .fill(Color(rgbStruct: rgb))
                .padding(20)
        }
        .frame(width: size, height: size)
    }
}

#Preview {
    ZStack {
        Color.element
        ColorCircle(rgb: RGB(), size: 200)
    }
    .frame(width: 300, height: 300)
    .previewLayout(.sizeThatFits)
}
