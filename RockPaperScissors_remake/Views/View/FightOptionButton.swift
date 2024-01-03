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
        Text(buttonName)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .font(.largeTitle.bold())
            .foregroundColor(.white)
            .background(buttonColor)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct FightOptionButton_Previews: PreviewProvider {
    static var previews: some View {
        FightOptionButton(buttonName: "Rock", buttonColor: .green)
    }
}
