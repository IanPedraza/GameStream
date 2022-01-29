//
//  GameItem.swift
//  GameStream
//
//  Created by Ian Pedraza on 17/01/22.
//

import SwiftUI
import Kingfisher

struct GameItem: View {
    
    var game: Game
    var action: (Game) -> Void
    
    var body: some View {
        
        Button(action: handleAction) {
            
            VStack {
                
                KFImage(URL(string: game.galleryImages[0])!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 6.0))
                
                Text(game.title)
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity)
                
            }
            .padding(.bottom, 12.0)
            
        }
        
    }
    
    func handleAction() {
        action(game)
    }
    
}

struct GameItem_Previews: PreviewProvider {
    static var previews: some View {
        //        GameItem()
        Text("Hello World")
    }
}
