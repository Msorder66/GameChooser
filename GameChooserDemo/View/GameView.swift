//
//  GameView.swift
//  GameChooser
//
//  Created by Gavin Jensen on 11/9/22.
//
//import SwiftUI
//
//struct GameView: View {
//
//    @State var data: Data
//
//    var body: some View {
//        ZStack{
//            //Background
//            VStack {
//             Text("Games")
//                    .font(.largeTitle)
//                VStack{
//                    ComponetView(gameData: data)
//                }
//            }
//        }
//    }
//}
//
//
//struct GameView_Previews: PreviewProvider {
//    static var previews: some View {
//        let data = Data(name: "Grand Theft Auto V", released: "2013-09-17", background_image: "https://media.rawg.io/media/games/456/456dea5e1c7e3cd07060c14e96612001.jpg", platforms: [Platforms(released_at: "2013-09-17", platform: .init(name: "PC, PS4, Xbox", image: ""))], genres: [Genre(name: "Action, Adventure")], stores: [StoreElement(store: StoreData(domain: "store.playstation.com epicgames.com store.steampowered.com marketplace.xbox.com microsoft.com"))], tags: [Tag(name: "Singleplayer, Multiplayer, Atmospheric, Full controller support, RPG, Co-op, Open World, cooperative, First-Person, Third Person, Funny")])
//        GameView(data: data)
//    }
//}


// Mark: Code To Be Saved

/*
 HStack {
 AsyncImage(url: URL(string: data.background_image), content: { returnedImage in
 returnedImage
 .resizable()
 .frame(width: 150, height: 150)
 .cornerRadius(20)
 
 }, placeholder: {
 ProgressView()
 })
 Text(data.name)
 .frame(alignment: .leading)
 .font(.title)
 .fontWeight(.bold)
 
 }
 
 HStack {
 ForEach(data.genres!, id: \.self) { genre in
 Text("\(genre.name)")
 .font(.callout)
 }
 }
 
 LazyVGrid(columns: [GridItem(spacing: 0), GridItem(spacing: 0)]) {
 if let tags = data.tags {
 ForEach(tags, id: \.self) { tag in
 Text(tag.name.capitalized)
 .multilineTextAlignment(.center)
 }
 }
 }
 
 LazyHGrid(rows: [GridItem(spacing: 4), GridItem(spacing: 4), GridItem(spacing: 4), GridItem(spacing: 4), GridItem(spacing: 4), GridItem(spacing: 4)]) {
 if let tags = data.tags {
 ForEach(tags, id: \.self) { tag in
 Text(tag.name.capitalized)
 .multilineTextAlignment(.leading)
 }
 }
 }
 .frame(maxWidth: .infinity)
 
 LazyHStack(alignment: .center) {
 Text("Released: \(data.released)")
 if let platforms = data.platforms {
 ForEach(platforms, id: \.self) { platform in
 Text("\(platform.platform.name),")
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
 */
