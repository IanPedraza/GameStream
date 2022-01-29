//
//  SearchViewModel.swift
//  GameStream
//
//  Created by Ian Pedraza on 24/01/22.
//

import Foundation

class SearchViewModel: ObservableObject {
    
    private let TAG = "SearchViewModel"
    
    /* @Published means object will be observe and notify whenever changes */
    @Published var games = [Game]()
    
    func search(game: String) {
        games.removeAll()
        
        let gameQuery = game.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? EMPTY_STRING
        
        let queryParams = [URLQueryItem(name: GamesAPI.PARAM_SEARCH, value: gameQuery)]
        
        var urlComponents = URLComponents(string: GamesAPI.BASE_URL + GamesAPI.SEARCH)!
        urlComponents.queryItems = queryParams
        
        let url = urlComponents.url!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            do {
                
                guard let jsonData = data else {
                    return
                }
                
                let decodedData = try JSONDecoder().decode(SearchResponse.self, from: jsonData)
                
                DispatchQueue.main.async {
                    
                    self.games.append(contentsOf: decodedData.results)
                    
                }
                
            } catch {
                print("[ERROR]:\(self.TAG):search:\(error)")
            }
            
        }.resume()
        
    }
    
}
