//
//  ExploreView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 2/25/23.
//

import SwiftUI

struct ExploreView: View {
    var selectedGame: Game
    
    @State private var currentTab: Int = 0
    
    var body: some View {
        ZStack {
            Background()
            VStack {
                HStack(spacing: 20) {
                    Spacer()
                    
                    Button(action: {
                        currentTab = 0
                    }, label: {
                        Text("Fantasy")
                            .font(.custom("URWDIN-Regular", size: 16))
                            .foregroundColor(currentTab == 0 ? .white : .gray)
                            .underline(currentTab == 0, color: Color("Primary"))
                    })
                    
                    Button(action: {
                        currentTab = 1
                    }, label: {
                        Text("Scores")
                            .font(.custom("URWDIN-Regular", size: 16))
                            .foregroundColor(currentTab == 1 ? .white : .gray)
                            .underline(currentTab == 1, color: Color("Primary"))
                    })
                    
                    Button(action: {
                        currentTab = 2
                    }, label: {
                        Text("Standings")
                            .font(.custom("URWDIN-Regular", size: 16))
                            .foregroundColor(currentTab == 2 ? .white : .gray)
                            .underline(currentTab == 2, color: Color("Primary"))
                    })
                    
                    Button(action: {
                        currentTab = 3
                    }, label: {
                        Text("Stats")
                            .font(.custom("URWDIN-Regular", size: 16))
                            .foregroundColor(currentTab == 3 ? .white : .gray)
                            .underline(currentTab == 3, color: Color("Primary"))
                    })
                    
                    Spacer()
                }
                .padding()
                
                switch currentTab {
                case 0:
                    ExploreFantasyView(selectedGame: selectedGame)
                case 1:
                    ExploreMatchesView(selectedGame: selectedGame)
                case 2:
                    ExploreStandingsView(selectedGame: selectedGame)
                case 3:
                    ExploreStatsView(selectedGame: selectedGame)
                default:
                    EmptyView()
                }
                Spacer()
            }
            .onAppear {
                currentTab = 0
            }
        }
        
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExploreView(selectedGame: Game(id: 1, title: "League of Legends", image: "lol"))
                .preferredColorScheme(.light)
            ExploreView(selectedGame: Game(id: 1, title: "League of Legends", image: "lol"))
                .preferredColorScheme(.dark)
        }
    }
}
