//
//  MatchModelView.swift
//  RockPaperScissors_remake
//
//  Created by AT5HK on 1/1/24.
//

import Foundation

struct MatchModelView {
    
    var userMove: Moves
    var computerMove: Moves
    var matchTitle: String
    
    mutating func fight(selectedMove: Moves) {
        let computerGenerateMove = randomMove()
        
        self.userMove = selectedMove
        self.computerMove = computerGenerateMove
        
        
        let userOutcome = fightOutcome(selectedMove: selectedMove, computerMove: computerGenerateMove)! // this should not return nil
        

        self.matchTitle = userOutcome.matchTitle
    }
    
    
    private func fightOutcome(selectedMove: Moves, computerMove: Moves) -> Match? {
        
        //check for tie before checking arrays for performance
        if selectedMove == computerMove { return .tie }
        
        
        let userWinsMove = movesWinningArray[selectedMove.rawValue]
        let userLosesMove = movesLosingArray[selectedMove.rawValue]
        
        if userWinsMove == computerMove {
            return .win
        }
        
        if userLosesMove == computerMove {
            return .lose
        }
        
        return nil
        
    }
    
    private func randomMove() -> Moves {
        //I force unwrap because my enum is defined and guaranteed in the model
        return Moves.allCases.randomElement()!
    }
    
}


fileprivate enum Match: String {
                        case win, lose, tie
                        
                        var matchTitle: String {
                            switch self {
                            case .win:
                                return "You Win!"
                            case .lose:
                                return "You Lost"
                            case .tie:
                                return "It's a Tie"
                            }
                        }
                    }
