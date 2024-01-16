//
//  ColorCircle.swift
//  BullsEye
//
//  Created by Gaspare Monte on 16/01/24.
//

import SwiftUI

struct ColorCircle: View {
    let rgb: RGB

    var body: some View {
        Circle()
            .fill(Color(rgbStruct: rgb))
    }
}

#Preview {
    ColorCircle(rgb: RGB())
}
