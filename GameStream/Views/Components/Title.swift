//
//  Titles.swift
//  GameStream
//
//  Created by Ian Pedraza on 15/01/22.
//

import SwiftUI

struct Title: View {
    
    var title: String
    
    var body: some View {
        
        Text(title.uppercased())
            .font(.title3)
            .foregroundColor(.white)
            .bold()
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .leading
            )
            .padding(.top)
        
    }
    
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: "Example")
    }
}
