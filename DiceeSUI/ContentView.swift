//
//  ContentView.swift
//  DiceeSUI
//
//  Created by Gerald on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = DiceViewModel()
    
    var body: some View {
        
        
        VStack {
            Image("DiceeLogo")
            HStack{
                Image(viewModel.diceOne)
                    .padding()
                Image(viewModel.diceTwo)
                    .padding()
            }
            Button(action: viewModel.roll, label: {
                Text("Roll")
                    .foregroundStyle(.white)
                    .padding()
                    .font(.title)
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
