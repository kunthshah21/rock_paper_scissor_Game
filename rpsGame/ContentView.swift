//
//  ContentView.swift
//  rpsGame
//
//  Created by Kunth Shah on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerScore:Int = 0
    @State private var compScore:Int = 0
    
    private var options = ["rock", "paper", "scissor"]
    
    @State private var playerPlay:String = "scissor"
    @State private var compPlay:String = "scissor"
    
    @State private var isButtonPressed = false
    
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("Rock Paper Scissor")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    Image(playerPlay).resizable().padding(.all)
                    Image(compPlay).resizable().padding(.all)
                }.frame(height: 200).shadow(color:.gray, radius: 20)
                Spacer()
                Button(action: {
                    self.isButtonPressed.toggle()
                    play()
                }) {
                    if isButtonPressed {
                        Image("buttonPressed").resizable().frame(width: 100, height: 70)
                    } else {
                        Image("button").resizable().frame(width: 100, height: 70)
                    }
                }
                Spacer()
                HStack {
                    Spacer()
                    Text("Player Score")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.all)
                    Spacer()
                    Text("Computer Score")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.all)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("\(playerScore)")
                        .padding(.all)
                    Spacer()
                    Text("\(compScore)")
                        .padding(.all)
                    Spacer()
                }
                Spacer()

            }
        }
    }
    func play() {
        playerPlay = options.randomElement() ?? "scissor"
        compPlay = options.randomElement() ?? "scissor"
        
        if playerPlay == compPlay {}
        else if (playerPlay == "scissor" && compPlay == "paper") ||  (playerPlay == "rock" && compPlay == "scissor") || (playerPlay == "paper" && compPlay == "rock"){
            
            playerScore += 1
            
        }
        else {
            compScore += 1
        }
    }
}



#Preview {
    ContentView()
}
