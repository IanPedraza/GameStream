//
//  ProfileView.swift
//  GameStream
//
//  Created by Ian Pedraza on 27/01/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var username: String = ""
    
    var body: some View {
        
        ZStack {
            
            Color(AppColors.PRIMARY)
                .ignoresSafeArea()
                .hideNavigationBar()
            
            VStack {
                
                ProfileSectionView()
                
                SettingsSectionView()
                
                Spacer()
                
            }
            
            
        }
        .onAppear {
            
        }
        
    }
    
}

struct ProfileSectionView: View {
    
    @State var profileImage: UIImage = UIImage(named: Resources.PROFILE_PICTURE)!
    
    @State var user: User = User()
    
    var body: some View {
        
        VStack {
            
            Text("Perfil")
                .title()
                .frame(
                    minWidth: 0,
                    idealWidth: 100,
                    maxWidth: .infinity,
                    alignment: .center
                )
                .padding()
            
            VStack {
                
                Image(uiImage: profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(
                        width: 118.0,
                        height: 118.0
                    )
                    .clipShape(Circle())
                
                Text(user.username)
                    .title()
                
            }
            .padding(EdgeInsets(
                top: 16.0,
                leading: 0,
                bottom: 32.0,
                trailing: 0
            ))
            .onAppear {
                let editProfileViewModel = EditProfileViewModel()                
                
                if let user = editProfileViewModel.getData() {
                    self.user = user
                }
                
                
                guard let image = getImage(named: Resources.PROFILE_PICTURE_FILE_NAME) else {
                    return
                }
                
                profileImage = image
            }
            
        }
        
    }
    
    private func getImage(named: String) -> UIImage? {
        
        guard let dir = try? FileManager.default.url(
            for: .documentDirectory,
               in: .userDomainMask,
               appropriateFor: nil,
               create: false
        ) else {
            return nil
        }
        
        let url = URL(fileURLWithPath: dir.absoluteString)
            .appendingPathComponent(named)
        
        return UIImage(contentsOfFile: url.path)
    }
    
}

struct SettingsSectionView: View {
    
    @State var isToggleOn: Bool = true
    @State var isEditProfileViewActive: Bool = false
    
    var body: some View {
        
        VStack(spacing: 3.0) {
            
            Text("AJUSTES")
                .title()
                .frame(
                    minWidth: 0,
                    idealWidth: 100,
                    maxWidth: .infinity,
                    alignment: .leading
                )
                .padding(.leading, 18.0)
            
            SettingsButton(text: "Cuenta") {
                
            }
            
            SettingsToggleButton(text: "Notificaciones", isOn: $isToggleOn) {
                
            }
            
            SettingsButton(text: "Editar Perfil") {
                isEditProfileViewActive = true
            }
            
            
            NavigationLink(
                destination: EditProfileView(),
                isActive: $isEditProfileViewActive,
                label: { EmptyView() }
            )
            
            SettingsButton(text: "Califica esta aplicación") {
                
            }
            
        }
        
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
