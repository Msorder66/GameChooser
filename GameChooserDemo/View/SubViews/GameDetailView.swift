//
//  GameDetailView.swift
//  GameChooser
//
//  Created by Gavin Jensen on 11/15/22.
//

import SwiftUI

struct GameDetailView: View {
    
    let gameData: Data
    
    var body: some View {
        ZStack {
            // Background
            AsyncImage(url: URL(string: gameData.background_image), content: { returnedImage in
                returnedImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .offset(x: -110)
            }, placeholder: {
                ProgressView()
            })
            VStack {
                Text(gameData.name)
                    .font(.largeTitle)
                Spacer()
                
                ScrollView(.horizontal){
                    HStack{
                        if let tags = gameData.tags {
                            ForEach(tags, id: \.self) { tag in
                                Text(tag.name.capitalized)
                                    .font(.title3)
                                
                            }
                        }
                    }
                } .frame(width: 200)
                
                VStack{
                    if let platforms = gameData.platforms {
                        ForEach(platforms, id: \.self) { platform in
                            Text("\(platform.platform.name) : \(platform.platform.games_count)")
                                .font(.headline)
                            
                            
                        }
                    }
                }
                HStack {
                    LazyHGrid(rows: [GridItem(spacing: 0), GridItem(spacing: 0), GridItem(spacing: 0)]) {
                        if let Store = gameData.stores {
                            ForEach(Store, id: \.self) { store in
                                Text(store.store.domain)
                                    .multilineTextAlignment(.leading)
                                    .frame(alignment: .center)
                            }
                            
                        }
                    }
                }
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}

//struct GameDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameDetailView(gameData: Data)
//    }
//}
