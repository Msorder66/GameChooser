//
//  ComponetView.swift
//  GameChooser
//
//  Created by Gavin Jensen on 11/15/22.
//

import SwiftUI

struct ComponetView: View {
    
    let gameData: Data
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: gameData.background_image), content: { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                
            }, placeholder: {
                ProgressView()
            })
            
            //Spacer()
            
            VStack {
                Text(gameData.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                LazyVGrid(columns: [GridItem(spacing: 0), GridItem(spacing: 0)]) {
                    if let genres = gameData.genres {
                        ForEach(genres, id: \.self) { genre in
                            Text(genre.name)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                //                ScrollView(.horizontal){
                //                    HStack{
                //                        if let tags = gameData.tags {
                //                            ForEach(tags, id: \.self) { tag in
                //                                Text(tag.name)
                //                                    .font(.subheadline)
                //                            }
                //                        }
                //                    }
                //                }
                //                HStack{
                //                if let platforms = gameData.platforms {
                //                    ForEach(platforms, id: \.self) { platform in
                //                        Text(platform.platform.name)
                //                            .font(.headline)
                //                        }
                //                    }
                //                }
            }
        }
        .frame(maxWidth: .infinity)
        //        Spacer()
    }
}

//struct ComponetView_Previews: PreviewProvider {
//    static var previews: some View {
//ComponetView(gameData: data)
//        
//    }
//}
