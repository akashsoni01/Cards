//
//  PlayingCards.swift
//  Cards
//
//  Created by Akash Soni on 12/08/18.
//  Copyright © 2018 Akash Soni. All rights reserved.
//

import Foundation

struct PlayingCards
{
    
    
    var suit:Suit
    var rank:Rank
    
    enum Suit:String{
        case spades = "♠"
        case hearts = "💌"
        case clubs = "♣"
        case diamonds = "◆"
        
        static var all = [Suit.spades,.hearts,.clubs,.diamonds]
    }
    
    enum Rank {
        case ace
        case face(String)
        case numaric(Int)
        
        var order:Int{
            switch self{
            case .ace: return 1
            case .numaric(let pipes): return pipes
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default : return 0
            }
            
        }
        static var all:[Rank] {
            var allRanks = [Rank.ace]
            
            for pipe in 2...10 {
                allRanks.append(Rank.numaric(pipe))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
    }
}
