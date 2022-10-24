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
    var released: String
    var background_image: String
}
