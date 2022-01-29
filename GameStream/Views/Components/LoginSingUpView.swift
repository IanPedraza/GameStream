//
//  LoginSingUpView.swift
//  GameStream
//
//  Created by Ian Pedraza on 12/01/22.
//

import SwiftUI

struct LoginSingUpView: View {
    
    @State var isShowingLogin: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button("INICIA SESIÓN", action: showLogin)
                    .foregroundColor(isShowingLogin ? .white : .gray)
                
                Spacer()
                
                Button("REGÍSTRATE", action: showSignUp)
                    .foregroundColor(isShowingLogin ? .gray : .white)
                
                Spacer()
            }
            
            Spacer(minLength: 42)
            
            if isShowingLogin {
                LoginView()
            } else {
                SignUpView()
            }
            
        }
    }
    
    func showLogin() {
        isShowingLogin = true
    }
    
    func showSignUp() {
        isShowingLogin = false
    }
    
}

struct LoginSingUpView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSingUpView()
    }
}
