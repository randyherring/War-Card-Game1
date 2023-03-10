//
//  ContentView.swift
//  War Card Game
//
//  Created by Dev on 12/28/22.
//

import SwiftUI

struct ContentView: View {
   
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                //Image("button")
                
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                        
                        
                }
                
                .buttonStyle(.plain)
                
                
                
                
                

                
                Spacer()
                HStack{
                    
                    Spacer()
                    VStack{
                         
                        Text("Player")
                            .padding(.bottom, 10.0)
                           
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    //test
                    //test
                    VStack{
                        
                        Text("CPU ")
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                }
                .font(.title)
                Spacer()
            }
            .frame(minWidth: 1000.0, maxWidth: .infinity, minHeight: 1300.0, maxHeight: .infinity)
        }
        
        
        
    }
      
    func deal() {
        // Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpu card
        
        cpuCard = "card" + String(cpuCardValue)
        //Update the score
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
