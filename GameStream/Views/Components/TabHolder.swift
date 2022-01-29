//
//  TabHolder.swift
//  GameStream
//
//  Created by Ian Pedraza on 14/01/22.
//

import SwiftUI

struct TabHolder: View {
    var name: String
    
    var body: some View {
        Text(name)
            .font(
                .system(
                    size: 30,
                    weight: .bold,
                    design: .rounded
                )
            )
    }
    
}

struct TabHolder_Previews: PreviewProvider {
    static var previews: some View {
        TabHolder(name: "Example")
    }
}
