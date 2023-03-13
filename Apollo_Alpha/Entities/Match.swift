//
//  Match.swift
//  Apollo_Alpha
//
//  Created by Jacob Franco on 3/12/23.
//

import Foundation

struct Match: Codable, Identifiable {
        var id: Int
       var team1: String
       var team2: String
       var score1: Int?
       var score2: Int?
       var date: String
    
}
