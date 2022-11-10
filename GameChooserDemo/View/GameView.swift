//
//  GameView.swift
//  GameChooser
//
//  Created by Gavin Jensen on 11/9/22.
//

import SwiftUI

struct GameView: View {
    
    @State var data: Data
    
    var body: some View {
        List {
            HStack {
                AsyncImage(url: URL(string: data.background_image), content: { returnedImage in
                    returnedImage
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20 )
                }, placeholder: {
                    ProgressView()
                })
                Text(data.name)
                    .font(.title)
                    .bold()
            }
            
            HStack {
                ForEach(data.genres!, id: \.self) { genre in
                    Text(genre.name)
                }
            }
            
            VStack {
                if let tags = data.tags {
                    ForEach(tags, id: \.self) { tag in
                        Text("Tag: \(tag.name)")
                            .padding()
                        Text(tag.language)
                    }
                }
                Text("Released: \(data.released)")
                if let platforms = data.platforms {
                    ForEach(platforms, id: \.self) { platform in
                        Text(platform.platform.name)
                    }
                }
            }
            
            VStack {
                if let Store = data.stores {
                    ForEach(Store, id: \.self) { store in
                        Text(store.store.domain)
                            .frame(alignment: .center)
                    }
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        let data = Data(name: "Grand Theft Auto V", released: "2013-09-17", background_image: "https://media.rawg.io/media/games/456/456dea5e1c7e3cd07060c14e96612001.jpg", platforms: [Platforms(released_at: "2013-09-17", platform: .init(name: "PC, PS4, Xbox", image: ""))], genres: [Genre(name: "Action, Adventure")], stores: [StoreElement(store: StoreData(domain: "store.playstation.com epicgames.com store.steampowered.com marketplace.xbox.com microsoft.com"))], tags: [Tag(name: "Singleplayer, Multiplayer, Atmospheric, Full controller support, RPG, Co-op, Open World, cooperative, First-Person, Third Person, Funny", language: "eng")])
        GameView(data: data)
    }
}
