//
//  CategoriesRecomendedView.swift
//  GameStream
//
//  Created by Ian Pedraza on 15/01/22.
//

import SwiftUI

struct CategoriesRecomendedView: View {
    
    var body: some View {
        
        VStack {
            
            Title(title: "Categorías sugeridas para ti")
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    CategoryItem(
                        icon: Resources.FPS
                    )
                    
                    CategoryItem(
                        icon: Resources.RPG
                    )
                    
                    CategoryItem(
                        icon: Resources.OPEN_WOLRD
                    )
                    
                }
                
            }
            
        }
        
    }
    
}


struct CategoriesRecomendedView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesRecomendedView()
    }
}
