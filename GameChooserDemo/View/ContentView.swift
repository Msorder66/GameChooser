//
//  ContentView.swift
//  GameChooserDemo
//
//  Created by Gavin Jensen on 9/27/22.
//

import SwiftUI

let gameUrl = "https://rawg-video-games-database.p.rapidapi.com/games?key=2ff2b6a5216e4ff58c4100d4d1881dcb"

struct ContentView: View {
    @StateObject var viewModel = APIViewModel()
    
    var body: some View {
        NavigationView {
            List {
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
            ContentView()
        }
    }
}
