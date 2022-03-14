//
//  SearchBarView.swift
//  GameStream
//
//  Created by Ian Pedraza on 14/01/22.
//

import SwiftUI

struct SearchBarView: View {
    
    @ObservedObject var searchViewModel = SearchViewModel()
    
    @State var searchQuery: String = EMPTY_STRING
    @State var isQueryEmpty: Bool = false
    
    @State var isGameViewActive: Bool = false
    @State var foundGame: Game? = nil
    
    var body: some View {
        
        HStack {
            
            TextField(EMPTY_STRING, text: $searchQuery)
                .field(
                    hint: "Búscar un video",
                    when: searchQuery.isEmpty,
                    showDivider: false
                )
            
            Button(action: searchAction) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(
                        searchQuery.isEmpty
                        ? Color(AppColors.HINT)
                        : Color(AppColors.ACCENT)
                    )
            }
            .alert(isPresented: $isQueryEmpty) {
                
                Alert(
                    title: Text("Error"),
                    message: Text("Ingresa un juego válido"),
                    dismissButton: .default(Text("Ok"))
                )
                
            }
            
            if foundGame != nil {
                
                NavigationLink(
                    destination: GameView(game: foundGame!),
                    isActive: $isGameViewActive,
                    label: { EmptyView() }
                )
                
            }
            
        }
        .padding( 11.0)
        .background(Color(AppColors.SECONDARY))
        .clipShape(RoundedRectangle(cornerRadius: 6.0))
        
    }
    
    func searchAction() {
        
        isQueryEmpty = searchQuery.isEmpty
        
        if isQueryEmpty {
            return
        }
        
        search(game: searchQuery)
        
    }
    
    func search(game: String) {
        
        searchViewModel.search(game: game)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + GamesAPI.TIME_OUT) {
            
            if searchViewModel.games.count == 0 {
                isQueryEmpty = true
            } else {
                
                foundGame = searchViewModel.games.first
                isGameViewActive = true
                
            }
            
        }
        
    }
    
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
