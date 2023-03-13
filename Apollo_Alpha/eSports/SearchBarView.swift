//
//  SearchBarView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 3/3/23.
//

import SwiftUI

struct SearchBarView: View {
    @StateObject var viewModel = SearchResultsViewModel()
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 5, style: .continuous)
                .fill(Color.black.opacity(0.15))
                .frame(width: UIScreen.main.bounds.width - 75, height: 40)
                .overlay(
                    HStack {
                        TextField("Search", text: $searchText, onEditingChanged: { isEditing in
                            self.isSearching = isEditing
                        })
                        .font(Font.custom("URWDIN-Regular", size: 12))
                        .padding(.leading, 5)
                        
                        if isSearching {
                            Button(action: {
                                self.searchText = ""
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                            })
                            .padding(.trailing, 5)
                        }
                    }
                )
        }
    }
}







