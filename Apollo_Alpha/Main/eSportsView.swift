//
//  eSportsView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 2/25/23.
//

import SwiftUI

struct eSportsView: View {
    @StateObject var gameGridViewModel = GameGridViewModel()
    @State private var searchText: String = ""
    @State private var isSearching: Bool = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Background()
                VStack {
                    if isSearching {
                        SearchResultsView()
                                } else {
                                    GameGridView(viewModel: gameGridViewModel)
                                }
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading: SearchBarView(searchText: $searchText, isSearching: $isSearching),
                            trailing: Image(systemName: "star.fill")
                        )
        }
    }
}

struct eSportsView_Previews: PreviewProvider {
    static var previews: some View {
        eSportsView()
    }
}
