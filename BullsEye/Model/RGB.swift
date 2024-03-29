//
//  RGB.swift
//  BullsEye
//
//  Created by Gaspare Monte on 16/01/24.
//

import Foundation

struct RGB {
    var red = 0.5
    var green = 0.5
    var blue = 0.5

    /// Create an RGB object with random values.
    static func random() -> RGB {
        var rgb = RGB()
        rgb.red = Double.random(in: 0..<1)
        rgb.green = Double.random(in: 0..<1)
        rgb.blue = Double.random(in: 0..<1)
        return rgb
    }

    /// Compute the normalized 3-dimensional distance to another RGB object.
    ///   - parameters:
    ///     - target: The other RGB object.
    func difference(target: RGB) -> Double {
        let rDiff = red - target.red
        let gDiff = green - target.green
        let bDiff = blue - target.blue
        return sqrt((rDiff * rDiff + gDiff * gDiff + bDiff * bDiff) / 3.0)
    }
    
    var rInt: Int {
      Int(red * 255.0)
    }
    var gInt: Int {
      Int(green * 255.0)
    }
    var bInt: Int {
      Int(blue * 255.0)
    }

    /// A String representing the integer values of an RGB instance.
    func intString() -> String {
      "R \(rInt) G \(gInt) B \(bInt)"
    }

    func accString() -> String {
      "Red \(rInt), Green \(gInt), Blue \(bInt)."
    }
}
