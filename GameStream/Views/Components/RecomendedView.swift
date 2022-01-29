//
//  RecomendedView.swift
//  GameStream
//
//  Created by Ian Pedraza on 15/01/22.
//

import SwiftUI

struct RecomendedView: View {
    
    var action: (String) -> Void
    
    var body: some View {
        
        VStack {
            
            Title(title: "Recomendados para ti")
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    VideoItem (
                        icon: Resources.RECOMENDED_1,
                        video: Resources.VIDEOS[1],
                        action: action
                    )
                    
                    VideoItem (
                        icon: Resources.RECOMENDED_2,
                        video: Resources.VIDEOS[2],
                        action: action
                    )
                    
                    VideoItem (
                        icon: Resources.RECOMENDED_3,
                        video: Resources.VIDEOS[3],
                        action: action
                    )
                    
                }
                
            }
            
        }
        
    }
    
    
}


struct RecomendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendedView() { video in
            
        }
    }
}
