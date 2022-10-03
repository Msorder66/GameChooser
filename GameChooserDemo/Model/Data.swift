//
//  Data.swift
//  GameChooserDemo
//
//  Created by Gavin Jensen on 9/27/22.
//

import Foundation

struct Data: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Data, rhs: Data) -> Bool {
        lhs.id < rhs.id
    }
    
    var platforms: [[String]]
    var platform: [[String]]
    var id: Int
    var slug: String
    var name: String
    var stores: [[String]]
    var store: [[String]]
    var released: String
    var background_image: String
    var image_background: String
    var games: [[String]]
    var games_count: Int
    var added: Int
    var year_start: Int?
    var year_end: Int?
    
    
    

}
