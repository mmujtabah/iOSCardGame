//
//  ContentView.swift
//  Card Game
//
//  Created by Muhammad Mujtaba Hussain on 3/11/26.
//

import SwiftUI

struct ContentView: View {
    // MARK: - State
    @State var playerCard: String = "card3"
    @State var cpuCard: String = "card11"
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0

    // MARK: - Body
    var body: some View {
        ZStack {
            Image("background-plain")

            VStack {
                Spacer()

                Image("logo")

                Spacer()

                HStack {
                    Spacer()

                    Image(playerCard)

                    Spacer()

                    Image(cpuCard)

                    Spacer()
                }

                Spacer()

                Button {
                    dealCards()
                } label: {
                    Image("button")
                }

                Spacer()

                HStack {
                    Spacer()

                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom)

                        Text(String(playerScore))
                            .font(.largeTitle)
                    }

                    Spacer()

                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom)

                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }

                    Spacer()
                }
                .foregroundStyle(.white)

                Spacer()
            }
            .padding()
        }
    }
    
    func dealCards() {
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)
        
        playerCard = "card\(playerValue)"
        cpuCard = "card\(cpuValue)"
        
        if playerValue > cpuValue {
            playerScore += 1
        }
        else if cpuValue > playerValue {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
