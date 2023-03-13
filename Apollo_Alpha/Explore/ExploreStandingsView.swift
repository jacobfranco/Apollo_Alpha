//
//  ExploreStandingsView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 3/13/23.
//

import SwiftUI

struct ExploreStandingsView: View {
    var selectedGame: Game
    var body: some View {
        Text("\(selectedGame.title) Standings")
    }
}

struct ExploreStandingsView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreStandingsView(selectedGame: Game(id: 1, title: "League of Legends", image: "lol"))
    }
}
