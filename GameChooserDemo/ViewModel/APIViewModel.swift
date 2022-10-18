//
//  VMapi.swift
//  GameChooser
//
//  Created by Gavin Jensen on 10/17/22.
//

import Foundation

class APIViewModel: ObservableObject {
    @Published var gamedata : Response!
    
    @MainActor
    func fetchData() async {
        
        let headers = [
            "X-RapidAPI-Key": "91493208d0msh98772cad0a8df90p199214jsnd6848b430201",
            "X-RapidAPI-Host": "rawg-video-games-database.p.rapidapi.com"
        ]
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://rawg-video-games-database.p.rapidapi.com/games?key=2ff2b6a5216e4ff58c4100d4d1881dcb")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: {
            (data, response, error) -> Void in
            if (error != nil) {
                print(error!)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse!)
            }
        })
        
        dataTask.resume()
    }
}
