//
//  SimpleVideoPlayer.swift
//  GameStream
//
//  Created by Ian Pedraza on 21/01/22.
//

import SwiftUI
import AVKit

struct SimpleVideoPlayer: View {
    
    var url: String
    
    var body: some View {
        
        VideoPlayer(
            player: AVPlayer(
                url: URL(string: url)!
            )
        )
        
    }
    
}

//struct SimpleVideoPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        SimpleVideoPlayer()
//    }
//}
