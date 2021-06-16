//
//  Obstacle.swift
//  Helicopter arcade game
//
//  Created by Jake Glick on 15/6/21.
//

import SwiftUI

struct Obstacle: View {
    
    let width: CGFloat = 20
    let height: CGFloat = 200
    
    
    var body: some View {
        
        Rectangle()
            .frame(width: width, height: height)
            .foregroundColor(.green)
    }
    
}
