//
//  CategoryItem.swift
//  GameStream
//
//  Created by Ian Pedraza on 15/01/22.
//

import SwiftUI

struct CategoryItem: View, Hashable {
    
    var icon: String
    
    var body: some View {
        
        Button (action: openCategory) {
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 8.0)
                    .fill(Color(AppColors.SECONDARY))
                    .frame(width: 160, height: 90)
                
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 42, height: 42)
                
            }
            
        }
        
    }
    
    func openCategory() {
        
    }
    
}


struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        
        CategoryItem(
            icon: Resources.FPS
        )
        
    }
}
