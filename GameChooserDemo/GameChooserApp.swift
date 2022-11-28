//
//  GameChooserDemoApp.swift
//  GameChooserDemo
//
//  Created by Gavin Jensen on 9/27/22.
//

import SwiftUI

@main
struct GameChooserApp: App {
    @StateObject var viewModel = APIViewModel()
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(viewModel)
        }
    }
}
