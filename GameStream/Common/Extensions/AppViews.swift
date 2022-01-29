//
//  AppViews.swift
//  GameStream
//
//  Created by Ian Pedraza on 14/01/22.
//

import SwiftUI

extension View {
    
    func tab(
        label: String,
        image: String,
        tag: Int
    ) -> some View {
        self
            .tabItem {
                Image(systemName: image)
                Text(label)
            }
            .tag(tag)
    }
    
    func hideNavigationBar() -> some View {
        self
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
    
}
