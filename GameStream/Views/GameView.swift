//
//  GameView.swift
//  GameStream
//
//  Created by Ian Pedraza on 21/01/22.
//

import SwiftUI

struct GameView: View {
    
    var game: Game
    
    var body: some View {
        
        ZStack {
            
            Color(AppColors.PRIMARY).ignoresSafeArea()
            
            VStack {
                
                SimpleVideoPlayer(
                    url: game.videosUrls.mobile
                ).ignoresSafeArea()
                    .frame(height: 220)
                
                
                ScrollView {
                    
                    VideoData(game: game)
                        .padding(.bottom)
                    
                    VideoGalleyImages(images: game.galleryImages)
                    
                    SimilarGames { video in
                        print(video)
                    }
                    
                }.frame(maxWidth: .infinity)
                
            }
            
        }
        
    }
    
}

struct GameView_Previews: PreviewProvider {
    
    static var previews: some View {
        GameView(game: Dumy.game)
    }
}
