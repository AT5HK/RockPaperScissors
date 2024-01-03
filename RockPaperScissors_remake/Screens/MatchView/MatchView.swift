//
//  MatchView.swift
//  RockPaperScissors_remake
//
//  Created by AT5HK on 1/1/24.
//

import SwiftUI

struct MatchView: View {
    
    @State var viewModel = MatchModelView(userMove: .scissors, computerMove: .rock, matchTitle: "Press Fight")
    
    var body: some View {
        VStack {
        
            Text(viewModel.matchTitle)
                .font(.system(.largeTitle, design: .default, weight: .bold))
                .frame(width: 400, height: 150)
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding()
            
            Spacer()
            
            HStack {
                EmojiView(handEmoji: viewModel.userMove.emoji)
                EmojiView(handEmoji: viewModel.computerMove.emoji)
            }
            
            Spacer()
            
            UserMoveButton(name: Moves.rock.uppercasedString, color: .green, action:
            {
                viewModel.fight(selectedMove: .rock)
            })
            .padding()
            
            UserMoveButton(name: Moves.paper.uppercasedString, color: .red, action:
            {
                viewModel.fight(selectedMove: .rock)
            })
            .padding(.horizontal, 15)
            
            UserMoveButton(name: Moves.scissors.uppercasedString, color: .yellow, action:
            {
                viewModel.fight(selectedMove: .rock)
            })
            .padding()
            
            
        }
        
        
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}

struct EmojiView: View {
    
    let handEmoji: String
    
    var body: some View {
        Text("\(handEmoji)")
            .font(.system(size: 125, weight: .bold, design: .default))
            .padding()
    }
}
