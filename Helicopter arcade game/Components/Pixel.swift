//
//  pixel.swift
//  Helicopter arcade game
//
//  Created by Jake Glick on 12/6/21.
//

import SwiftUI

struct Pixel: View {
    
    let size: Int
    let color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: CGFloat(size), height: CGFloat(size))
            .foregroundColor(color)
    }
    
}
