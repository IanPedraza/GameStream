//
//  SettingsButton.swift
//  GameStream
//
//  Created by Ian Pedraza on 27/01/22.
//

import SwiftUI

struct SettingsButton: View {
    
    var text: String
    var action: () -> Void
    
    
    var body: some View {
        
        Button(action: action) {
            HStack {
                
                Text(text)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
                
            }
            .padding()
        }
        .background(Color(AppColors.SECONDARY))
        .clipShape(RoundedRectangle(cornerRadius: 3.0))
        
    }
    
}

struct SettingsButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButton(text: "Example") {
            
        }
    }
}
