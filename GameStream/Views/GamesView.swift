//
//  GamesView.swift
//  GameStream
//
//  Created by Ian Pedraza on 16/01/22.
//

import SwiftUI

struct GamesView: View {
    
    @ObservedObject var gamesViewModel = GamesViewModel()
    
    @State var gameViewIsActive: Bool = false
    @State var selectedGame: Game? = nil

    let gridForm = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ZStack {
            
            Color(AppColors.PRIMARY).ignoresSafeArea()
            
            VStack {
                
                Text("Juegos")
                    .title()
                
                ScrollView {
                    
                    LazyVGrid(columns: gridForm,spacing: 8.0) {
                        
                        ForEach(gamesViewModel.games, id: \.self) { game in
                            
                            GameItem(game: game, action: openGame)
                            
                        }
                        
                    }
                    
                }
                
            }.padding(.horizontal, 6.0)
            
            if selectedGame != nil {
                
                NavigationLink(
                    destination: GameView(game: selectedGame!),
                    isActive: $gameViewIsActive,
                    label: { EmptyView() }
                )
                
            }
            
        }
        .hideNavigationBar()
        .onAppear {
            
        }
        
    }
    
    func onAppear() {
        print("First Game: \(gamesViewModel.games[0])")
        
        print("First Game Title: \(gamesViewModel.games[0].title)")
    }
    
    func openGame(game: Game) {
        selectedGame = game
        gameViewIsActive = true
    }
    
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
