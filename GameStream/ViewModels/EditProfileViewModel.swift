//
//  EditProfileViewModel.swift
//  GameStream
//
//  Created by Ian Pedraza on 28/01/22.
//

import Foundation

class EditProfileViewModel {
    
    var user: User = User()
    
    func saveData(user: User) -> Bool {
        
        guard let encoded = try? PropertyListEncoder().encode(user) else {
            return false
        }
        
        UserDefaults.standard.set(encoded, forKey: UserDefaultsKeys.USER)
        
        return true
    }
    
    func getData() -> User? {
        
        guard let data = UserDefaults.standard.value(forKey: UserDefaultsKeys.USER) as? Data else {
            return nil
        }
        
        let user = try? PropertyListDecoder().decode(User.self, from: data)
        return user
    }
    
    func validate(email: String, password: String) -> Bool {
        
        guard let user = getData() else {
            return saveData(user: User(email: email, password: password))
        }
        
        return email == user.email && password == user.password
    }
    
}
