//
//  ContentView.swift
//  GameStream
//
//  Created by Ian Pedraza on 12/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Spacer()
                
                Color(AppColors.PRIMARY).ignoresSafeArea()
                
                VStack {
                    AppLogo()
                        .padding(.bottom, 42.0)
                    
                    LoginSingUpView()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView()
    }
    
}
