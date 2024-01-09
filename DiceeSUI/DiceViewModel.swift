//
//  DiceViewModel.swift
//  DiceeSUI
//
//  Created by Gerald on 5/1/24.
//

import Foundation

class DiceViewModel: ObservableObject{
    @Published var diceOne = "DiceOne"
    @Published var diceTwo = "DiceTwo"
    
    let dice = Dice()
    
    func roll(){
        diceOne = dice.diceImages[Int.random(in: 0..<6)]
        diceTwo = dice.diceImages[Int.random(in: 0..<6)]
        print("rolling")
        print(diceOne, diceTwo)
    }
    
}
