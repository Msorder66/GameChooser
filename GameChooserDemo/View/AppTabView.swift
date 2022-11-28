//
//  TabView.swift
//  GameChooser
//
//  Created by Gavin Jensen on 11/16/22.
//

import SwiftUI

struct AppTabView: View {
    @EnvironmentObject var viewModel: APIViewModel
    
    var body: some View {
        TabView{
            GameTabView()
                .tabItem {
                    (Label("Games", systemImage: "house"))
                }
                .environmentObject(viewModel)
            
            ChooserTabView()
                .tabItem {
                    Label("Chooser", systemImage: "gearshape")
                }
                .environmentObject(viewModel)
        }
    }
}

struct GameTabView: View {
    var body: some View {
        NavigationView{
            ZStack {
                HomeScreen()
            }
        }
    }
}

struct ChooserTabView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameChooserview()
            }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
