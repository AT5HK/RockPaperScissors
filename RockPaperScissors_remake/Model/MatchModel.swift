//
//  MatchModel.swift
//  RockPaperScissors_remake
//
//  Created by AT5HK on 1/2/24.
//

import Foundation

enum Moves: Int, CaseIterable {
    case rock = 0
    case paper = 1
    case scissors = 2

    var uppercasedString: String {
        switch self {
        case .rock:
            return "rock".uppercased()
        case .paper:
            return "paper".uppercased()
        case .scissors:
            return "scissors".uppercased()
        }
    }
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
}

//.rock in the movesArray wins against .scissors and loses against .paper in the corresponding index of the winning and losing array

let movesArray: Array<Moves> = [
    .rock,
    .paper,
    .scissors
]

let movesWinningArray: Array<Moves> = [
    .scissors,
    .rock,
    .paper
]

let movesLosingArray: Array<Moves> = [
    .paper,
    .scissors,
    .rock
]
