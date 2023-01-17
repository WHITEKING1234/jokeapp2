//
//  joke.model.swift
//  jokeapp2
//
//  Created by Mac on 9/1/23.
//

import Foundation
class Jokemodel{
    
    
    
    
    
    
    private  var netwokrMandeger = NetworkManager()
    private weak var conrtoller: Jokecontrol!
    init(conrtoller:Jokecontrol){
        self.conrtoller = conrtoller
        
        
        
        
        
        
        
    }
    
    
    
    public func getjoke(){
        netwokrMandeger.getJoke { joke in
            self.conrtoller.joke = joke
        }
    }
}

    
    
    
    
    

