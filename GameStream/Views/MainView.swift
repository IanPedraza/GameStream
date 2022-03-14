//
//  HomeView.swift
//  GameStream
//
//  Created by Ian Pedraza on 14/01/22.
//

import SwiftUI

struct MainView: View {
    
    static let TAB_PROFILE: Int = 0
    static let TAB_GAMES: Int = 1
    static let TAB_HOME: Int = 2
    static let TAB_FAVS: Int = 3
    
    @State var selectedTab: Int = MainView.TAB_HOME
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            ProfileView()
                .tab(
                    label: "Perfil",
                    image: "person",
                    tag: MainView.TAB_PROFILE
                )
            
            GamesView()
                .tab(
                    label: "Juegos",
                    image: "gamecontroller",
                    tag: MainView.TAB_GAMES
                )
            
            HomeView()
                .tab(
                    label: "Inicio",
                    image: "house",
                    tag: MainView.TAB_HOME
                )
            
            FavoriteGamesView()
                .tab(
                    label: "Favoritos",
                    image: "heart",
                    tag: MainView.TAB_FAVS
                )
            
        }
        .accentColor(.white)
        .hideNavigationBar()
        
    }
    
    init() {
        
        UITabBar.appearance().backgroundColor = UIColor(Color(AppColors.TAB_VIEW))
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color(.gray))
        UITabBar.appearance().isTranslucent = true
        
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone 13 Pro")
    }
}
