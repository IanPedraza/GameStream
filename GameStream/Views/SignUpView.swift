//
//  SignUpView.swift
//  GameStream
//
//  Created by Ian Pedraza on 12/01/22.
//

import SwiftUI

struct SignUpView: View {
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                
                SignUpHeader()
                    .padding(.bottom)
                
                SignUpFields()
                
                SignUpSocialMediaButtons()
            }
            .padding(.horizontal, 77.0)
            
        }
        
    }
    
    
}

struct SignUpFields: View {
    
    @State var email: String = EMPTY_STRING
    @State var password: String = EMPTY_STRING
    @State var passwordConfirm: String = EMPTY_STRING
    
    var body: some View {
        
        VStack {
            TextField(EMPTY_STRING, text: $email)
                .field(
                    title: "Correo Electrónico*",
                    hint: "ejemplo@gmail.com",
                    when: email.isEmpty
                )
                .frame(width: 300)
            
            SecureField(EMPTY_STRING, text: $password)
                .field(
                    title: "Contraeña*",
                    hint: "Escribe tu contraseña",
                    when: password.isEmpty
                )
            
            SecureField(EMPTY_STRING, text: $passwordConfirm)
                .field(
                    title: "Confirmar Contraeña*",
                    hint: "Vuelve a escribir tu contraseña",
                    when: passwordConfirm.isEmpty
                )
                .padding(.bottom, 30.0)
            
            
            Button(action: signUp) {
                Text("REGÍSTRATE")
                    .outlinedButton()
            }
            .padding(.bottom, 50.0)
        }
        
    }
    
    func signUp() {
        
    }
    
}

struct SignUpHeader: View {
    
    var body: some View {
        
        VStack(alignment: .center) {
            Text("Elije una foto de perfil")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.bottom, 1.0)
                .frame(width: 300)
            
            Text("Puedes cambiar o elegirla más adelante")
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding(.bottom)
            
            Button(action: takePicture) {
                
                ZStack {
                    Image(Resources.PROFILE_PICTURE)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(
                            width: 80,
                            height: 80,
                            alignment: .center
                        )
                        .clipShape(Circle())
                    
                    Image(systemName: "camera")
                        .foregroundColor(.white)
                }
                
            }
        }
        
    }
    
    func takePicture() {
        
    }
    
}

struct SignUpSocialMediaButtons: View {
    var body: some View {
        
        VStack {
            
            Text("Registrate sesión con redes sociales")
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
