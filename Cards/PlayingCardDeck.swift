//
//  PlayingCardDeck.swift
//  Cards
//
//  Created by Akash Soni on 12/08/18.
//  Copyright © 2018 Akash Soni. All rights reserved.
//

import Foundation
struct PlayingCardDeck {
   private(set) var cards = [PlayingCards]()
    
    init() {
        for suit in PlayingCards.Suit.all{
            for rank in PlayingCards.Rank.all{
                cards.append(PlayingCards(suit:suit,rank:rank))
            }
            
        }
    }
    
    mutating func draw() -> PlayingCards? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4Random)
        }else{
            return nil
        }
    }
}
extension Int {
    var arc4Random: Int {
        switch self {
        case 1...Int.max:
            return Int(arc4random_uniform(UInt32(self)))
        case -Int.max..<0:
            return Int(arc4random_uniform(UInt32(self)))
        default:
            return 0
        }
        
    }
}
