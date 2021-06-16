//
//  ContentView.swift
//  Helicopter arcade game
//
//  Created by Jake Glick on 12/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var heliPosititon = CGPoint(x: 100, y: 100)
    @State private var obstPosition = CGPoint(x:  1000, y: 300)
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
            
        GeometryReader { geo in
        
            ZStack {
                
                Helicopter()
                    .position(self.heliPosititon)
                    .onReceive(self.timer) { _ in
                        self.gravity()
                    }
                
                Obstacle()
                    .position(self.obstPosition)
                    .onReceive(self.timer) { _ in
                        self.obstMove()
                    }
                
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .background(Color.black)
            .gesture(
                TapGesture()
                    .onEnded {
                        withAnimation {
                            self.heliPosititon.y -= 100
                        }
                    })
            
        }
        .edgesIgnoringSafeArea(.all)

    }
    
    func gravity() {
        withAnimation {
            self.heliPosititon.y += 20
        }
    }
    
    func obstMove() {
        
        if self.obstPosition.x > 0 {
            withAnimation {
                self.obstPosition.x -= 20
            }
        }
        
        else {
            self.obstPosition.x = 1000
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
