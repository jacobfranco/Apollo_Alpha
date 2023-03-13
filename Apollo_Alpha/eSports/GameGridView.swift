//
//  GameGridView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 2/25/23.
//

import SwiftUI

struct GameGridView: View {
    @ObservedObject var viewModel: GameGridViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                ForEach(viewModel.games) { game in
                    GameView(game: game)
                        .frame(height: 150)
                }
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 8)
            .background(Color.clear) // Set the background color of the ScrollView to clear
        }
    }
}

struct GameGridView_Previews: PreviewProvider {
    static var previews: some View {
        GameGridView(viewModel: GameGridViewModel())
    }
}
