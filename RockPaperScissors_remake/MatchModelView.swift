//
//  MatchModelView.swift
//  RockPaperScissors_remake
//
//  Created by AT5HK on 1/1/24.
//

import Foundation

struct MatchModelView {
    
    private let fightOptions = [
            "👊",
            "🖐",
            "✌️"
    ]
    
    var player1 = "👊"
    var player2 = "🖐"
    
    mutating func fight() {
        self.player1 = randomFightOption()
        self.player2 = randomFightOption()
    }
    
    private func randomFightOption() -> String {
        return fightOptions.randomElement()!
    }
    
}
