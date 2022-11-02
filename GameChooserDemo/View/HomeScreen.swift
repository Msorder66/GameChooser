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
                    }
                    VStack {
                        Text(gamedata.released)
                        if let platforms = gamedata.platforms {
                            ForEach(platforms, id: \.self) { platform in
                                Text(platform.platform.name)
//                                Text(platform.platform.games_count)
//                                AsyncImage(url: URL(string: platform.platform.image_background), content: { returnedImage in
//                                    returnedImage
//
//                                })
                            }
                        }
                    }
                }
                
                //                    .background(Color(hex: gamedata.saturated_color))
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
