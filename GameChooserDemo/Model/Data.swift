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
//    let saturated_color: String
    let platforms: [Platforms]?
    let genres: [Genre]?
    let stores: [StoreElement]?
    let tags: [Tag]?
    
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
        lhs.name < rhs.name
    }
    
    let name: String
    let games_count : Int
    let image: String?
    
}

struct Genre: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Genre, rhs: Genre) -> Bool {
        lhs.name < rhs.name
    }
    let name: String
    
}

// MARK: - StoreElement
struct StoreElement: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: StoreElement, rhs: StoreElement) -> Bool {
        lhs.hashValue < rhs.hashValue
    }
    let store: StoreData
}

// MARK: - StoreData
struct StoreData: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: StoreData, rhs: StoreData) -> Bool {
        lhs.domain < rhs.domain
    }
    let domain: String
}

struct Tag: Codable, Hashable, Equatable, Comparable {
    static func < (lhs: Tag, rhs: Tag) -> Bool {
        lhs.name < rhs.name
    }
    
    let name: String
//    let language: String
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
