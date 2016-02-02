//
//  pokemon.swift
//  PokeDex
//
//  Created by chad parr on 2/2/16.
//  Copyright © 2016 chad parr. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    
    
    var name: String {
        return _name
    }
    
    var pokexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        
        self._name = name
        self._pokedexId = pokedexId
        
    }
    
    
}