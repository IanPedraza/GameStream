//
//  AppTextField.swift
//  GameStream
//
//  Created by Ian Pedraza on 12/01/22.
//

import SwiftUI

extension View {
    
    func field(
        title: String? = nil,
        hint: String,
        when shouldShow: Bool,
        showDivider: Bool = true
    ) -> some View {
        
        VStack(alignment: .leading) {
            
            if title != nil {
                Text(title!)
                    .foregroundColor(Color(AppColors.ACCENT))
            }
            
            ZStack(alignment: .leading) {
                Text(hint)
                    .font(.caption)
                    .foregroundColor(Color(AppColors.HINT))
                    .opacity(shouldShow ? 1.0 : 0)
                    .padding(.leading, 4.0)
                
                self
                    .foregroundColor(.white)
            }
            
            if showDivider {
                Divider()
                    .frame(height: 1.0)
                    .background(Color(AppColors.ACCENT))
                    .padding(.bottom)
            }
        }
        .padding(.bottom)
    }
    
}
