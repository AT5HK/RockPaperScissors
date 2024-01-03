//
//  MatchView.swift
//  RockPaperScissors_remake
//
//  Created by AT5HK on 1/1/24.
//

import SwiftUI

struct MatchView: View {
    
    @State var viewModel = MatchModelView()
    
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
            
            Button {
                viewModel.fight(selectedMove: .rock)
            } label: {
                FightOptionButton(buttonName: Moves.rock.uppercasedString, buttonColor: .green)
            }
            .padding()
            
            Button {
                viewModel.fight(selectedMove: .paper)
            } label: {
                FightOptionButton(buttonName: Moves.paper.uppercasedString, buttonColor: .red)
            }
            .padding(.horizontal, 15)
            
            Button {
                viewModel.fight(selectedMove: .scissors)
            } label: {
                FightOptionButton(buttonName: Moves.scissors.uppercasedString, buttonColor: .yellow)
            }
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
