//
//  ContentView.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 2/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        ZStack {
            TabView (selection: $selection){
                
                HomeView()
                    .tabItem {
                        selection == 0 ? Image(systemName: "house.fill") : Image(systemName: "house")
                    }
                    .tag(0)
                eSportsView()
                    
                    .tabItem() {
                        selection == 1 ? Image(systemName: "magnifyingglass") : Image(systemName: "magnifyingglass")
                    }
                    
                    .tag(1)
               FantasyView()
                    .tabItem() {
                        selection == 2 ? Image(systemName: "globe.europe.africa.fill") : Image(systemName: "globe.europe.africa")
                    }
                    .tag(2)
                ProfileView()
                    .tabItem() {
                        selection == 3 ? Image(systemName: "person.fill") : Image(systemName: "person")
                    }
                    .tag(3)
                
            }// END TabView
            .background(
                            VStack {
                                // Transparent background
                                Color.clear
                                // Blur effect
                                VisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
                            }
                            .edgesIgnoringSafeArea(.all)
                        )
            
            
        } // END ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}


