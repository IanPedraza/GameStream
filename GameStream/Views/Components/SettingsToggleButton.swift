//
//  SettingsToggleButton.swift
//  GameStream
//
//  Created by Ian Pedraza on 27/01/22.
//

import SwiftUI

struct SettingsToggleButton: View {
    
    var text: String
    var isOn: Binding<Bool>
    var action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            HStack {
                
                Text(text)
                    .foregroundColor(.white)
                
                Spacer()
                
               Toggle(EMPTY_STRING, isOn: isOn)
                
            }
            .padding()
        }
        .background(Color(AppColors.SECONDARY))
        .clipShape(RoundedRectangle(cornerRadius: 3.0))
        
    }
    
}

//struct SettingsToggleButton_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsToggleButton(text: "Toggle Button", isOn: false) {
//            
//        }
//    }
//}
