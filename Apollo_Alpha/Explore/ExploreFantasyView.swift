//
//  ExploreFantasyView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 3/13/23.
//

import SwiftUI

struct ExploreFantasyView: View {
    var selectedGame: Game
    var body: some View {
        Text("\(selectedGame.title) Fantasy")
    }
}

struct ExploreFantasyView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreFantasyView(selectedGame: Game(id: 1, title: "League of Legends", image: "lol"))
    }
}
