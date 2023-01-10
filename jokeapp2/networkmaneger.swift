//
//  networkmaneger.swift
//  jokeapp2
//
//  Created by Mac on 9/1/23.
//

import Foundation
import Foundation

class NetworkManager {
    
    func getJoke(completion: @escaping (joke) -> ()) {
        let url = URL(string: "https://official-joke-api.appspot.com/random_joke")
        
        URLSession.shared.dataTask(with: url!) {(data, response, error) in
            
            if error == nil && data != nil {
                do {
                    let joke = try JSONDecoder().decode(joke.self, from: data!)
                    
                    DispatchQueue.main.async {
                        completion(joke)
                    }
                    
                } catch {
                    print("error")
                }
                
            }
            
        }.resume()
    }
}
