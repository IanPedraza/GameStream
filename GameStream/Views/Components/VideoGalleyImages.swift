//
//  VideoGalleyImages.swift
//  GameStream
//
//  Created by Ian Pedraza on 22/01/22.
//

import SwiftUI
import Kingfisher

struct VideoGalleyImages: View {
    
    var images: [String]
    
    let gridForm = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("GALERÍA")
                .foregroundColor(.white)
                .padding(.leading)
            
            ScrollView(.horizontal) {
                
                LazyHGrid(rows: gridForm, spacing: 8.0) {
                    
                    ForEach(images, id: \.self) { image in
                        
                        KFImage(URL(string: image)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(.leading)
                        
                    }
                    
                }
                
            }.frame(height: 180)
            
        }.frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        
    }
    
}


struct VideoGalleyImages_Previews: PreviewProvider {
    static var previews: some View {
        VideoGalleyImages(images: Dumy.game.galleryImages)
    }
}
