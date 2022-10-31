//
//  String+Color.swift
//  GameChooser
//
//  Created by Gavin Jensen on 10/26/22.
//

import SwiftUI

extension String {
    func nameToColor() -> Color {
        switch self {
        case "red": return Color.red
        case "blue": return Color.blue
        case "orange": return Color.orange
        case "brown": return Color.brown
        case "sliver": return Color.gray
        case "purple": return Color.purple
        case "pink": return Color.pink
        case "green": return Color.green
        
        default:
            return Color.yellow
        }
    }
}
