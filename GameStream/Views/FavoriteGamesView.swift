//
//  FavoriteGames.swift
//  GameStream
//
//  Created by Ian Pedraza on 27/01/22.
//

import SwiftUI

struct FavoriteGamesView: View {
    
    @ObservedObject var gamesViewModel = GamesViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color(AppColors.PRIMARY)
                .ignoresSafeArea()
            
            VStack {
                
                Text("FAVORITOS")
                    .title()
                
                ScrollView {
                    
                    ForEach(gamesViewModel.games, id: \.self) { game in
                        
                        VStack(spacing: 0) {
                            
                            SimpleVideoPlayer(url: game.videosUrls.mobile)
                                .frame(height: 300)
                            
                            Text(game.title)
                                .foregroundColor(.white)
                                .padding()
                                .frame(
                                    maxWidth: .infinity,
                                    alignment: .leading
                                )
                                .background(Color(AppColors.SECONDARY))
                                .clipShape(RoundedRectangle(cornerRadius: 3.0))
                            
                        }
                        
                    }
                    
                }
                .padding(.bottom, 8.0)
                
                
            }
            .padding(.horizontal, 6.0)
            .hideNavigationBar()
            
        }
        
    }
    
}

struct FavoriteGamesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteGamesView()
    }
}
