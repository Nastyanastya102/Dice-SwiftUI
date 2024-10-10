//
//  ContentView.swift
//  Dice SwiftUI
//
//  Created by Nastya Klyashtorna on 2024-10-09.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber: Int = 1
    @State var rightDiceNumber: Int = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(imageCode: leftDiceNumber)
                    DiceView(imageCode: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()

                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 36))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal, 52)
                        
                }
                .background(Color.green)
                .padding(.bottom)
            }
            
        }

    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let imageCode: Int
    var body: some View {
        Image("dice\(imageCode)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 150)
            .padding()
    }
}
