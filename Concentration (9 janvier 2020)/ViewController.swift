//
//  ViewController.swift
//  Concentration (9 janvier 2020)
//
//  Created by Alexandre Moutaud on 09/01/2020.
//  Copyright © 2020 Alexandre Moutaud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Nb de clic : \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻","🎃","👻","🎃"]

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1;
        if let cardButton = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardButton], on: sender)
        } else {
            print("la carte n'existe pas")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

