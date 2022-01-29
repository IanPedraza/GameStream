//
//  Constants.swift
//  GameStream
//
//  Created by Ian Pedraza on 12/01/22.
//

import Foundation

let EMPTY_STRING: String = ""

struct AppColors {
    static let PRIMARY: String = "PrimaryColor"
    static let SECONDARY: String = "SecondaryColor"
    static let ACCENT: String = "AccentColor"
    static let HINT: String = "HintColor"
    static let TAB_VIEW: String = "TabViewColor"
}

struct Resources {
    static let LOGO: String = "AppLogo"
    static let PROFILE_PICTURE: String = "ProfilePicture"
    static let PROFILE_PICTURE_FILE_NAME: String = "prfile-photo"
    static let PLACEHOLDER_IMG: String = "The Witcher 3"
    
    static let VIDEOS: [String] = [
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256671638/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256720061/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256814567/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256801252/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"
    ]
    
    static let FPS: String = "FPS-Icon"
    static let OPEN_WOLRD: String = "OpenWorld-Icon"
    static let RPG: String = "RPG-Icon"
    
    static let RECOMENDED_1: String = "Abzu"
    static let RECOMENDED_2: String = "Crash Bandicoot"
    static let RECOMENDED_3: String = "DEATH STRANDING"
    
    static let MAY_LIKE_1: String = "Cuphead"
    static let MAY_LIKE_2: String = "Hades"
    static let MAY_LIKE_3: String = "Grand Theft Auto V"
    
}

struct GamesAPI {
    static let TIME_OUT: Double = 1.3
    
    static let BASE_URL: String = "https://gamestream-api.herokuapp.com/api"
    static let GET_GAMES: String = "/games"
    static let SEARCH: String = "/games/search"
    
    static let PARAM_SEARCH: String = "contains"
}

struct Dumy {
    
    static let game = Game(
        title: "Sonic The Hedgehog",
        studio: "Sega",
        contentRaiting: "E+",
        publicationYear: "1991",
        description: "Juego de Sega Genesis publicado en 1991 con más de 40 millones de copias vendidas actualmente",
        platforms: ["Nintendo"],
        tags: ["plataformas","mascota"],
        videosUrls: VideoUrl (
            mobile: "example.com",
            tablet: "example.com"
        ),
        galleryImages: [ "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg",
                         
                         "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg",
                         
                         "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg"
                       ]
    )
    
}

struct UserDefaultsKeys {
    static let USER = "localUser"
}
