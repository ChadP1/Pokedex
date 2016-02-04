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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLbl.text = pokemon.name
        
    }
    
    
    
    @IBAction func returnToMain(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
}
