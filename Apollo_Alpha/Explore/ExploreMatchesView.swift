//
//  ExploreMatchesView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 3/13/23.
//

import SwiftUI

struct ExploreMatchesView: View {
    var selectedGame: Game
    var body: some View {
        Text("\(selectedGame.title) Matches")
    }
}

struct ExploreMatchesView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreMatchesView(selectedGame: Game(id: 1, title: "League of Legends", image: "lol"))
    }
}
