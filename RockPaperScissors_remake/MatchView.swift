//
//  MatchView.swift
//  RockPaperScissors_remake
//
//  Created by AT5HK on 1/1/24.
//

import SwiftUI

struct MatchView: View {
    
    @State var model = MatchModelView()
    
    var body: some View {
        VStack {
        
            Text("Rock Wins!")
                .font(.system(.largeTitle, design: .default, weight: .bold))
                .frame(width: 400, height: 150)
                .background(Color(.systemRed))
                .foregroundColor(.white)
                .cornerRadius(8.0)
                .padding()
            
            Spacer()
            
            HStack {
                EmojiView(handEmoji: model.player1)
                EmojiView(handEmoji: model.player2)
            }
            
            Spacer()
            
            Button("Fight") {
                model.fight()
            }
            .font(.system(.largeTitle, design: .default, weight: .bold))
            .frame(width: 375, height: 75)
            .foregroundColor(.white)
            .background(Color(.systemBlue))
            .cornerRadius(8.0)
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
