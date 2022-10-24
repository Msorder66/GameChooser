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
    
    var id: Int
    var slug: String
    var name: String
    
    
    

}

struct platforms: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: platforms, rhs: platforms) -> Bool {
        lhs.id < rhs.id
    }
    
    var platform: [String]
    var id: Int
    var name: String
    var image: Bool
    var year_start: Int
    var year_end: Int
    var image_background: String
}
