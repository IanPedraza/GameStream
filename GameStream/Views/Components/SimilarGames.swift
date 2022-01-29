//
//  SimilarGames.swift
//  GameStream
//
//  Created by Ian Pedraza on 22/01/22.
//

import SwiftUI

struct SimilarGames: View {
    
    var action: (String) -> Void
    
    var body: some View {
        
        VStack {
            
            Title(title: "JUEGOS SIMILARES")
                .foregroundColor(.white)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    VideoItem (
                        icon: Resources.MAY_LIKE_1,
                        video: Resources.VIDEOS[4],
                        action: action
                    ).padding(.leading)
                    
                    VideoItem (
                        icon: Resources.MAY_LIKE_2,
                        video: Resources.VIDEOS[5],
                        action: action
                    ).padding(.leading)
                    
                    VideoItem (
                        icon: Resources.MAY_LIKE_3,
                        video: Resources.VIDEOS[6],
                        action: action
                    ).padding(.leading)
                    
                }
                
            }
            
        }
        
    }
    
    
}

struct SimilarGames_Previews: PreviewProvider {
    static var previews: some View {
        SimilarGames { video in
            
        }
    }
}
