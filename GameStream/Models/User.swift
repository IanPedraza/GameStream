//
//  User.swift
//  GameStream
//
//  Created by Ian Pedraza on 28/01/22.
//

import Foundation

struct User: Codable, Hashable {
    
    var email: String = EMPTY_STRING
    var password: String = EMPTY_STRING
    var username: String = EMPTY_STRING
    
}
