//
//  ContentView.swift
//  GameChooserDemo
//
//  Created by Gavin Jensen on 9/27/22.
//

import SwiftUI

let gameUrl = [ "https://rawg-video-games-database.p.rapidapi.com/games?key=d4a77005e9274c13b01da476c5b51757"
]

struct HomeScreen: View {
    @StateObject var viewModel = APIViewModel()
    @State var Tab = AppTabView()
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    //                 Text("Games")
                    //                        .font(.largeTitle)
                    List {
                        ForEach(viewModel.gamedata,id:  \.self) { game in
                            NavigationLink {
                                GameDetailView(gameData: game)
                            } label: {
                                ComponetView(gameData: game)
                            }
                        }
                    }
                }
            }
        }
        .task {
            await viewModel.fetchData()
        }
    }
}



struct ImageView: View {
    let url: URL?
    
    var body: some View {
        if let url = url {
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .scaledToFit()
                        .cornerRadius(8)
                case .failure(_):
                    Image(systemName: "Xmark")
                default:
                    Image(systemName: "Xmark")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
