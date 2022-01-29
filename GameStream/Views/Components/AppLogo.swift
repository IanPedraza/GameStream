//
//  AppLogo.swift
//  GameStream
//
//  Created by Ian Pedraza on 12/01/22.
//

import SwiftUI

struct AppLogo: View {
    var body: some View {
        Image(Resources.LOGO)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250)
    }
}

struct AppLogo_Previews: PreviewProvider {
    static var previews: some View {
        AppLogo()
    }
}
