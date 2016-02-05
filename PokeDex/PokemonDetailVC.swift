//
//  PokemonDetailVC.swift
//  PokeDex
//
//  Created by chad parr on 2/3/16.
//  Copyright © 2016 chad parr. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var evoTxtLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var nextEvo: UIImageView!
    @IBOutlet weak var currentEvo: UIImageView!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var weightLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img = UIImage(named: "\(pokemon.pokexId)")
        nameLbl.text = pokemon.name
        mainImage.image = img
        currentEvo.image = img
        
        pokemon.downloardPokemonDetails { () -> () in
            //
            self.updateUI()
        }
        
    }
    
    func updateUI() {
  
        descriptionLbl.text = pokemon.description
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        pokedexLbl.text = "\(pokemon.pokexId)"
        weightLbl.text = pokemon.weight
        attackLbl.text = pokemon.attack
        
        
        if pokemon.nextEvolutionId == "" {
            evoTxtLbl.text = "No Evolution"
            nextEvo.hidden = true
        } else {
            nextEvo.hidden = false
            nextEvo.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next evolution: \(pokemon.nextEvolutionTxt)"
            
            if pokemon.nextEvolutionLevel != "" {
                str += " -LVL \(pokemon.nextEvolutionLevel)"
            }
        }
       
        
        
    }
    
    @IBAction func returnToMain(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
}
