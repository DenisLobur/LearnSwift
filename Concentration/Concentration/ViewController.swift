//
//  ViewController.swift
//  Concentrationtypedef <#existing#> <#new#>;
//
//  Created by Admin on 11/19/18.
//  Copyright © 2018 Denys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
        flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojiChoices: Array<String> = ["🎃", "👻", "🎃", "👻"]

    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Card is not in the cardStack")
        }
        
    }

    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard with Emoji: \(emoji)")
        if button.currentTitle == emoji {
           button.setTitle("", for: UIControl.State.normal)
           button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    


}

