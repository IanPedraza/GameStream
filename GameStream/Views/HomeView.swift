//
//  HomeView.swift
//  GameStream
//
//  Created by Ian Pedraza on 14/01/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var url = Resources.VIDEOS[0]
    @State var isPlayerActive = false
    
    var body: some View {
        
        ZStack {
            
            Color(AppColors.PRIMARY)
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    
                    AppLogo().padding(.horizontal, 11)
                    
                    SearchBarView().padding(.top)
                    
                    PopularsView(action: playVideo)
                    
                    CategoriesRecomendedView()
                    
                    RecomendedView(action: playVideo)
                    
                    MayLikeView(action: playVideo).padding(.bottom)
                    
                    NavigationLink(
                        destination: AppVideoPlayer(url: url),
                        isActive: $isPlayerActive,
                        label: { EmptyView() }
                    )
                }
                .padding(.horizontal, 18.0)
                
            }
            
        }
        .hideNavigationBar()
        
    }
    
    func playVideo(video: String) {
        url = video
        isPlayerActive = true
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}
