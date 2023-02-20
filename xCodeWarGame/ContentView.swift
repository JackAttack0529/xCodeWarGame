//
//  ContentView.swift
//  xCodeWarGame
//
//  Created by Jack Hyde on 2/17/23.
//

import SwiftUI

struct ContentView: View {
    // State values/variables
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    
    var body: some View {
        ZStack {
            Image("background")
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    // Displays a card image based on the current value of the playerCard state variable
                    Image(playerCard)
                    Spacer()
                    // Displays a card image based on the current value of the cpuCard state variable
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    // The following code will be run each time the button is clicked
                    
                    // The random method generates a random whole number from one specified Int to a second specified Int (Ex: Int.random (in: Int...Int))
                    let playerRandom = Int.random(in: 2...14)
                    
                    let cpuRandom = Int.random(in: 2...14)
                   
                    // Updates the cards displayed on the app
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    // Update the score
                    if (playerRandom > cpuRandom){
                        playerScore = playerScore + 1
                    } else if (playerRandom < cpuRandom) {
                        cpuScore = cpuScore + 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        // Styling can be added to elements/views by using the right panel
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding()
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
