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
    //    let url = URL(string: "https://media.rawg.io/media/games/456/456dea5e1c7e3cd07060c14e96612001.jpg")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.gamedata, id: \.self) { gamedata in
                    HStack {
                        AsyncImage(url: URL(string: gamedata.background_image), content: { returnedImage in
                            returnedImage
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(20 )
                        }, placeholder: {
                            ProgressView()
                        })
                        Text(gamedata.name)
                            .font(.title)
                            .bold()
                    }
                    HStack {
                        ForEach(gamedata.genres!, id: \.self) { genre in
                            Text(genre.name)
                        }
                    }
                    VStack {
                        if let platforms = gamedata.platforms {
                            ForEach(gamedata.store ?? [], id: \.self) { store in
                                Text(store.name)
                                Text(store.domain)
                                Text(gamedata.released)
                                    .padding()
                                ForEach(platforms, id: \.self) { platform in
                                    Text(platform.platform.name)
                                    Text("\(platform.platform.games_count)")
                                    // Image(platform.platform.image?)
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
        
        //                    .background(Color(hex: gamedata.saturated_color))
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
