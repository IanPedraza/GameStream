//
//  AppVideoPlayer.swift
//  GameStream
//
//  Created by Ian Pedraza on 14/01/22.
//

import SwiftUI
import AVKit

struct AppVideoPlayer: View {
    
    var url: String
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VideoPlayer(
                player: AVPlayer(
                    url: URL(string: url)!
                )
            ).frame(
                width: 400,
                height: 300
            )
        }
    }
}

//struct AppVideoPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        AppVideoPlayer()
//    }
//}
