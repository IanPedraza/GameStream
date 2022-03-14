//
//  LoginView.swift
//  GameStream
//
//  Created by Ian Pedraza on 12/01/22.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                
                LoginFields()
                    .padding(.bottom, 50.0)
                
                LoginSocialMediaButtons()
            }
            .padding(.horizontal, 77.0)
        }
        
    }
    
    
}

struct LoginFields: View {
    
    @State var email: String = EMPTY_STRING
    @State var password: String = EMPTY_STRING
    
    @State var isHomeActive: Bool = false
    
    var body: some View {
        
        VStack {
            
            TextField(EMPTY_STRING, text: $email)
                .field(
                    title: "Correo Electrónico",
                    hint: "ejemplo@gmail.com",
                    when: email.isEmpty
                )
            
            SecureField(EMPTY_STRING, text: $password)
                .field(
                    title: "Contraeña",
                    hint: "Introduce tu contraseña",
                    when: password.isEmpty
                )
            
            Button(action: forgotPassword) {
                Text("¿Olvidaste tu contraseña?")
                    .foregroundColor(Color(AppColors.ACCENT))
                    .font(.footnote)
                    .frame(
                        width: 300,
                        alignment: .trailing
                    )
            }
            .padding(.bottom, 50.0)
            
            
            Button(action: login) {
                Text("INICIAR SESIÓN")
                    .outlinedButton()
            }
            
            NavigationLink(
                destination: MainView(),
                isActive: $isHomeActive,
                label: { EmptyView() }
            )
            
        }
        
    }
    
    func forgotPassword() {
        
    }
    
    func login() {
        isHomeActive = true
    }
    
}

struct LoginSocialMediaButtons: View {
    var body: some View {
        
        VStack {
            
            Text("Inicia sesión con redes sociales")
                .foregroundColor(.white)
                .frame(
                    maxWidth: .infinity,
                    alignment: .center
                )
            
            HStack {
                
                Button(action: loginFacebook) {
                    Text("Facebook")
                        .button()
                }
                
                Button(action: loginTwitter) {
                    Text("Twitter")
                        .button()
                }
                
            }
            .padding(.top)
            
        }
        
    }
    
    func loginFacebook() {
        
    }
    
    func loginTwitter() {
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
