//
//  PopularsView.swift
//  GameStream
//
//  Created by Ian Pedraza on 14/01/22.
//

import SwiftUI

struct PopularsView: View {
    
    var action: (String) -> Void
    
    var body: some View {
        VStack {
            
            Title(title: "Los más populares")
            
            Button(action: playVideo) {
                
                ZStack {
                    VStack(spacing: 0) {
                        
                        Image(Resources.PLACEHOLDER_IMG)
                            .resizable()
                            .scaledToFit()
//                            .frame(minHeight: 200)
                        
                        Text(Resources.PLACEHOLDER_IMG)
                            .bold()
                            .frame(
                                minWidth: 0,
                                maxWidth: .infinity,
                                alignment: .leading
                            )
                            .padding()
                            .background(Color(AppColors.SECONDARY))
                        
                    }
                    
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .foregroundColor(.white)
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .center
                )
                .padding(.vertical)
                
            }
            
        }
        
    }
    
    func playVideo() {
        action(Resources.VIDEOS[0])
    }
}

struct PopularsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularsView() {_ in
            
        }
    }
}
