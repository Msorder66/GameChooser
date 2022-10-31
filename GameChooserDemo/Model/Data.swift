//
//  Data.swift
//  GameChooserDemo
//
//  Created by Gavin Jensen on 9/27/22.
//

import Foundation

struct Data: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Data, rhs: Data) -> Bool {
        lhs.name < rhs.name
    }
    
    let name: String
    let released: String
    let background_image: String
    let saturated_color: String
    let platforms: [Platforms]?
}

struct Platforms: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Platforms, rhs: Platforms) -> Bool {
        lhs.released_at! < rhs.released_at!
    }
    
    let released_at: String?
    let platform: Platform
}

struct Platform: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Platform, rhs: Platform) -> Bool {
        lhs.games_count < rhs.games_count
    }
    
    let name: String
    let image: String?
    let games_count: Int
    let image_background: String
    let genres: Genres?
    
}

struct Genres: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Genres, rhs: Genres) -> Bool {
        lhs.name < rhs.name
    }
    let name: String
    let image_background: String
    let store: Stores
}

struct Stores: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Stores, rhs: Stores) -> Bool {
        lhs.domain < rhs.domain
    }
    
    let name: String
    let domain: String
    let image_background: String
    let tags: Tags
}

struct Tags: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Tags, rhs: Tags) -> Bool {
        lhs.language < rhs.language
    }
    
    let name: String
    let language: String
    let image_background: String
    let esrb_rating: Esrb_rating
}

struct Esrb_rating: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Esrb_rating, rhs: Esrb_rating) -> Bool {
        lhs.name < rhs.name
    }
    
    let name: String
    let short_screenshots: Short_screenshots
    
}

struct Short_screenshots: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Short_screenshots, rhs: Short_screenshots) -> Bool {
        lhs.image < rhs.image
    }
    
    let image: String
    
}
