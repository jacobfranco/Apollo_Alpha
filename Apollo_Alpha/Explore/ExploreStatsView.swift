//
//  ExploreStatsView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 3/13/23.
//

import SwiftUI

struct ExploreStatsView: View {
    var selectedGame: Game
    var body: some View {
        Text("\(selectedGame.title) Stats")
    }
}

struct ExploreStatsView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreStatsView(selectedGame: Game(id: 1, title: "League of Legends", image: "lol"))
    }
}
