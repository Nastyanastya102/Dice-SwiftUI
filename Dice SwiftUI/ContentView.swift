//
//  ContentView.swift
//  Dice SwiftUI
//
//  Created by Nastya Klyashtorna on 2024-10-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(imageCode: 1)
                    DiceView(imageCode: 2)
                }
                .padding(.horizontal)
                Spacer()

                Button(action: {}) {
                    Text("Roll")
                        .font(.system(size: 36))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.green)
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
