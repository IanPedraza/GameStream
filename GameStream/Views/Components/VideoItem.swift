//
//  GameItem.swift
//  GameStream
//
//  Created by Ian Pedraza on 15/01/22.
//

import SwiftUI

struct VideoItem: View {

    var icon: String
    var video: String
    var action: (String) -> Void

    var body: some View {
        
        Button(action: playVideo) {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 135)
                .clipShape(RoundedRectangle(cornerRadius: 6.0))
        }
        
    }
    
    func playVideo() {
        action(video)
    }

}


struct VideoItem_Previews: PreviewProvider {
    static var previews: some View {
        VideoItem (
            icon: Resources.MAY_LIKE_1,
            video: Resources.VIDEOS[4]
        ) { video in
            
        }
    }
}
