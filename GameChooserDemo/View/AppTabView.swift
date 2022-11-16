//
//  TabView.swift
//  GameChooser
//
//  Created by Gavin Jensen on 11/16/22.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView{
            GameTabView()
                .tabItem {
                    (Label("Games", systemImage: "house"))
                }
            ChooserTabView()
                .tabItem {
                    Label("Chooser", systemImage: "gearshape")
                }
        }
    }
}

struct GameTabView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Text("Game View")
            }
            .navigationTitle("GView")
        }
    }
}

struct ChooserTabView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("Game Chooser")
            }
            .navigationTitle("GChooser")
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
