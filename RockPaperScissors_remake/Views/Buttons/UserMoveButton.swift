//
//  UserMoveButton.swift
//  RockPaperScissors_remake
//
//  Created by AT5HK on 1/3/24.
//

import SwiftUI

struct UserMoveButton: View {
    
    let name: String
    let color: Color
    let action: (() -> Void)
    
    
    var body: some View {
        Button(action: action) {
            Text(name)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .font(.largeTitle.bold())
                .foregroundColor(.white)
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

struct UserMoveButton_Previews: PreviewProvider {
    static var previews: some View {
        UserMoveButton(name: Moves.rock.uppercasedString, color: .green, action: {/*do nothing in closure*/})
    }
}
