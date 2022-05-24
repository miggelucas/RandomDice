//
//  ViewController.swift
//  RandomDice
//
//  Created by Lucas Migge de Barros on 23/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    // use refactor if you want to change de outlet name!
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let collectionDice = [UIImage(named: "dado-1"),
                          UIImage(named: "dado-2"),
                          UIImage(named: "dado-3"),
                          UIImage(named: "dado-4"),
                          UIImage(named: "dado-5"),
                          UIImage(named: "dado-6")
    ]
    // another way to get the dice images
    // let diceCollection = [#imageLiteral(resourceName: "dado-1"), #imageLiteral(resourceName: "dado-2"), #imageLiteral(resourceName: "dado-3"), #imageLiteral(resourceName: "dado-4"), #imageLiteral(resourceName: "dado-5"), #imageLiteral(resourceName: "dado-6")]
    
    var diceOneNumber = Int()
    var diceTwoNumber = Int()

    @IBAction func rollButton() {
        
        // once the roll button is pressed, the dice must show up
        diceImageViewOne.isHidden = false
        diceImageViewTwo.isHidden = false
        
        // get random numbers for the next roll
        diceOneNumber = Int.random(in: 0...5)
        diceTwoNumber = Int.random(in: 0...5)
        
        // set the new random number for the dice
        diceImageViewOne.image = collectionDice[diceOneNumber]
        diceImageViewTwo.image = collectionDice[diceTwoNumber]
        
        
        // another way of getting new dice numbers
        //diceImageViewOne.image = collectionDice.randomElement() as! UIImage
        //diceImageViewTwo.image = collectionDice.randomElement() as! UIImage
        
    }

}

