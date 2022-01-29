//
//  Texts.swift
//  GameStream
//
//  Created by Ian Pedraza on 27/01/22.
//

import SwiftUI

extension Text {
    
    func title() -> some View {
        self
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.bottom, 9.0)
    }
    
}
