//
//  VideoData.swift
//  GameStream
//
//  Created by Ian Pedraza on 22/01/22.
//

import SwiftUI

struct VideoData: View {
    
    var game: Game
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(game.title)
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(.leading)
            
            HStack {
                
                Text(game.studio)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.top, 5.0)
                    .padding(.leading)
                
                Text(game.contentRaiting)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.top, 5.0)
                
                Text(game.publicationYear)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.top, 5.0)
                
            }
            
            Text(game.description)
                .foregroundColor(.white)
                .font(.subheadline)
                .padding(.top, 5.0)
                .padding(.leading)
            
            HStack {
                
                ForEach(game.tags, id:\.self) { tag in
                    
                    Text("#\(tag)")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .padding(.top, 4.0)
                        .padding(.leading)
                    
                }
                
            }
            
        }.frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
}


struct VideoData_Previews: PreviewProvider {
    static var previews: some View {
        VideoData(game: Dumy.game)
    }
}
