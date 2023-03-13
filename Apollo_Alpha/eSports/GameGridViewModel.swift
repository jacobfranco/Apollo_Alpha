//
//  GameGridViewModel.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 2/25/23.
//

import SwiftUI

class GameGridViewModel: ObservableObject {
    @Published var games: [Game] = [
            Game(id: 1, title: "League of Legends", image: "lol"),
            Game(id: 2, title: "Overwatch", image: "overwatch"),
            Game(id: 3, title: "Valorant", image: "valorant"),
            Game(id: 4, title: "Dota 2", image: "dota2"),
            Game(id: 5, title: "CS:GO", image: "csgo"),
            Game(id: 6, title: "Rocket League", image: "rocketleague"),
            Game(id: 7, title: "PUBG", image: "pubg"),
            Game(id: 8, title: "Call of Duty", image: "cod")
        ]
    
}

