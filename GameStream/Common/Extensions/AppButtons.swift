//
//  Buttons.swift
//  GameStream
//
//  Created by Ian Pedraza on 13/01/22.
//

import SwiftUI

extension Text {
    
    func button() -> some View {
        self
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(
                maxWidth: .infinity
            )
            .padding(.vertical, 8.0)
            .background(Color(AppColors.SECONDARY))
            .clipShape(RoundedRectangle(cornerRadius: 6.0))
//            .background() {
//                RoundedRectangle(cornerRadius: 6.0)
//                    .foregroundColor(Color(AppColors.SECONDARY))
//            }
    }
    
    func outlinedButton() -> some View {
        self
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(
                maxWidth: .infinity,
                alignment: .center
            )
            .padding(EdgeInsets(
                top: 11,
                leading: 18,
                bottom: 11,
                trailing: 18
            ))
            .overlay(
                RoundedRectangle(cornerRadius: 6.0)
                    .stroke(
                        Color(AppColors.ACCENT),
                        lineWidth: 1.0
                    )
                    .shadow(
                        color: Color.white,
                        radius: 10.0
                    )
            )
    }
    
}
