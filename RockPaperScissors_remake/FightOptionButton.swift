//
//  FightOptionButton.swift
//  RockPaperScissors_remake
//
//  Created by AT5HK on 1/2/24.
//

import SwiftUI

struct FightOptionButton: View {
    
    let buttonName: String
    let buttonColor: Color
    
    var body: some View {
        Button("") {
//            model.fight()
        }
        .font(.system(.largeTitle, design: .default, weight: .bold))
        .frame(width: 375, height: 75)
        .foregroundColor(.white)
        .background(Color(.systemBlue))
        .cornerRadius(8.0)
        .padding()
    }
}

struct FightOptionButton_Previews: PreviewProvider {
    static var previews: some View {
        FightOptionButton(buttonName: "Rock", buttonColor: .green)
    }
}
