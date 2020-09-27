//
//  PlayerFetcher.swift
//  nba_players
//
//  Created by Aleksandar on 27/09/2020.
//

import Foundation
import SwiftUI

struct Player: Decodable, Identifiable {
    let id: String
    let full_name: String
    let team: String
    let img: String
    let link: String
    let number: String
    let age: String
}

class PlayersFetcher: ObservableObject {
    @Published var players = [Player]()
    @Published var loading = true
    
    init() {
        fetchPlayers()
    }
    
    func fetchPlayers() {
      let url = URL(string: "https://acomanketa.000webhostapp.com/basketball.json")!
        URLSession.shared.self.dataTask(with: url) {
            (data, response, error) in
            do {
                let temp = try JSONDecoder().self.decode([Player].self, from: data!)
                DispatchQueue.main.async {
                    sleep(1)
                    self.players = temp;
                    self.loading = false;
                    print(temp)
                }
            }
            catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
