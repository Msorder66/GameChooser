//
//  GameChooserview.swift
//  GameChooser
//
//  Created by Gavin Jensen on 11/16/22.
//

import SwiftUI

struct GameChooserview: View {
    var body: some View {
        ZStack{
            VStack{
                List {
                    ForEach(viewModel.gamedata,id:  \.self) { game in
                        NavigationLink {
                            GameDetailView(gameData: game)
                        } label: {
                            ComponetView(gameData: game)
                        }
                    }
                    var addButton: some View {
                        Button("Start", action: {
                            add()
                        })
                    }
                }
            }
        }
        func add() {
            
        }
        
        func GameChooser() {
        }
    }
}

struct GameChooserview_Previews: PreviewProvider {
    static var previews: some View {
        GameChooserview()
    }
}
