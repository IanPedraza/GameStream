//
//  CategoryItem.swift
//  GameStream
//
//  Created by Ian Pedraza on 15/01/22.
//

import SwiftUI

struct CategoryItem: View, Hashable {
    
    var device = UIDevice.current.model
    var icon: String
    
    var width: Double {
        device == "iPad" ? 320 : 160
    }
    
    var height: Double {
        device == "iPad" ? 180 : 90
    }
    
    var iconSize: Double {
        device == "iPad" ? 84 : 42
    }
    
    var body: some View {
        
        Button (action: openCategory) {
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 8.0)
                    .fill(Color(AppColors.SECONDARY))
                    .frame(
                        width: width,
                        height: height
                    )
                
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: iconSize,
                        height: iconSize
                    )
                
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
