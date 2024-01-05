//
//  ContentView.swift
//  DiceeSUI
//
//  Created by Gerald on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    @State var diceOne = "DiceOne"
    @State var diceTwo = "DiceTwo"
    
    func roll(){
        let diceImages = [
            "DiceOne",
            "DiceTwo",
            "DiceThree",
            "DiceFour",
            "DiceFive",
            "DiceSix"
        ]
        diceOne = diceImages[Int.random(in: 0..<6)]
        diceTwo = diceImages[Int.random(in: 0..<6)]
    }
    
    var body: some View {
        
        
        VStack {
            Image("DiceeLogo")
            HStack{
                Image(diceOne)
                    .padding()
                Image(diceTwo)
                    .padding()
            }
            Button(action: roll, label: {
                Text("Roll")
                    .foregroundStyle(.white)
                    .padding().font(.title)
            })
            .background(.red)
            .cornerRadius(15)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("GreenBackground")
            .resizable()
            .ignoresSafeArea()
        )
        
    }
}



#Preview {
    ContentView()
}
