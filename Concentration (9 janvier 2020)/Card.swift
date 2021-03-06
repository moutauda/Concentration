//
//  Card.swift
//  Concentration (9 janvier 2020)
//
//  Created by Alexandre Moutaud on 10/01/2020.
//  Copyright © 2020 Alexandre Moutaud. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier : Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int{
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
