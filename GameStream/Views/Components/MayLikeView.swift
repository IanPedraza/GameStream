//
//  MayLikeView.swift
//  GameStream
//
//  Created by Ian Pedraza on 15/01/22.
//

import SwiftUI

struct MayLikeView: View {
    
    var action: (String) -> Void
    
    var body: some View {
        
        VStack {
            
            Title(title: "Videos que podrían gustarte")
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    VideoItem (
                        icon: Resources.MAY_LIKE_1,
                        video: Resources.VIDEOS[4],
                        action: action
                    )
                    
                    VideoItem (
                        icon: Resources.MAY_LIKE_2,
                        video: Resources.VIDEOS[5],
                        action: action
                    )
                    
                    VideoItem (
                        icon: Resources.MAY_LIKE_3,
                        video: Resources.VIDEOS[6],
                        action: action
                    )
                    
                }
                
            }
            
        }
        
    }
    
    
}


struct MayLikeView_Previews: PreviewProvider {
    static var previews: some View {
        MayLikeView() { video in
            
        }
    }
}
