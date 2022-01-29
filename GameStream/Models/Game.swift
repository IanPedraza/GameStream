//
//  Game.swift
//  GameStream
//
//  Created by Ian Pedraza on 16/01/22.
//

import Foundation

struct Game: Codable, Hashable {
    
    var title: String
    var studio: String
    var contentRaiting: String
    var publicationYear: String
    var description: String
    var platforms: [String]
    var tags: [String]
    var videosUrls: VideoUrl
    var galleryImages: [String]
    
}
