//
//  Respone.swift
//  GameChooserDemo
//
//  Created by Gavin Jensen on 9/27/22.
//

import Foundation

struct Response: Codable, Hashable, Equatable {
    let results: [Data]
    let platforms: [platforms]
}

