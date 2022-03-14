//
//  OffsetPosition.swift
//  GameStream
//
//  Created by Ian Pedraza on 29/01/22.
//

import SwiftUI

struct OffsetPosition: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                Image(Resources.PLATZI_LOGO)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(
                        width: geometry.size.width,
                        height: geometry.size.height
                    )
                
                // Offsets()
                
                // Positions()
                
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
            
        }
        
    }
    
}

struct Offsets: View {
    
    var body: some View {
        
        VStack {
            
            Image(Resources.PLATZI_LOGO)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .offset(x: 18.0, y: -20.0)
            
            Text("Platzi")
                .font(.title)
                .foregroundColor(.green)
                .bold()
        }
        
    }
    
}

struct Positions: View {
    
    var body: some View {
        
        VStack {
            
            Image(Resources.PLATZI_LOGO)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .position(x: 0.0, y: 0.0)
            
        }
        
    }
    
}

struct OffsetPosition_Previews: PreviewProvider {
    static var previews: some View {
        OffsetPosition()
    }
}
