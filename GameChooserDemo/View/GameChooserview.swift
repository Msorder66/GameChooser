//
//  GameChooserview.swift
//  GameChooser
//
//  Created by Gavin Jensen on 11/16/22.
//

import SwiftUI

struct GameChooserview: View {
    @EnvironmentObject var viewModel: APIViewModel
    @State var selection = Set<Data>()
    @State var editMode: EditMode = .inactive
    //    @State var isEditing = false
    
    var body: some View {
        ZStack{
            VStack{
                List(selection: $selection) {
                    ForEach(viewModel.gamedata,id:  \.self) { game in
                        NavigationLink {
                            GameDetailView(gameData: game)
                        } label: {
                            ComponetView(gameData: game)
                        }
                    }
//                    .navigationTitle(Text("Demo"))
//                    .environment(\.editMode, self.$editMode)
//                    .toolbar {
//                        ToolbarItem(placement: .navigationBarLeading) {
//                            selectButton
//                        }
//                        ToolbarItem(placement: .navigationBarTrailing) {
//                            startButton
                        }
                    }
                }
            }
        }
//        var selectButton: some View {
//           Button(action: {
//               self.editMode.toggle()
//               self.selection = Set<Data>()
//           }) {
//               Text(self.editMode.title)
//           }
//       }
//
//       var startButton: some View {
//           if editMode == .inactive {
//               return Button(action: addItem) {
//                   Image(systemName: "Select")
//               }
//           } else {
//               return Button(action: chosser) {
//                   Image(systemName: "Start")
//               }
//           }
//       }
//
//       func chosser() {
//           for id in selection {
//
//               }
//           }
//           selection = Set<Data>()
//       }
    


struct GameChooserview_Previews: PreviewProvider {
    static var previews: some View {
        GameChooserview()
    }
}


//    .navigationBarItems(trailing: Button(action: {
//        isEditing.toggle()
//    }, label: {
//        if self.isEditing {
//            Text("Start")
//                .fontWeight(.bold)
//                .foregroundColor(Color.red)
//        }else {
//            Text("Select")
//                .foregroundColor(Color.blue)
//
//        }
//    }))
//    .listStyle(.inset)
//    .environment(\.editMode, .constant(self.isEditing ? .active : .inactive))
//    .animation(.spring(), value: isEditing)
