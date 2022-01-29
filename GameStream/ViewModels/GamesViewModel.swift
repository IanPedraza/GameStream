//
//  ViewModel.swift
//  GameStream
//
//  Created by Ian Pedraza on 15/01/22.
//

import Foundation

class GamesViewModel: ObservableObject {
    
    private let TAG = "ViewModel"
    
    /* @Published means object will be observe and notify whenever changes */
    @Published var games = [Game]()
    
    init() {
        getGames()
    }
    
    private func getGames() {
        let url = URL(string: GamesAPI.BASE_URL + GamesAPI.GET_GAMES)!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            do {
                
                guard let jsonData = data else {
                    return
                }
                
                let decodedData = try JSONDecoder().decode([Game].self, from: jsonData)
                
                DispatchQueue.main.async {
                    
                    self.games.append(contentsOf: decodedData)
                    
                }
                
            } catch {
                print("[ERROR]:\(self.TAG):getGames:\(error)")
            }
            
        }.resume()
        
    }
    
}
