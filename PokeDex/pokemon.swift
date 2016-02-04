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
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionTxt: String! 
    
    
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