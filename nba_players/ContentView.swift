//
//  ContentView.swift
//  nba_players
//
//  Created by Aleksandar on 27/09/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fetcher = PlayersFetcher()
    
    
    var body: some View {
        if(fetcher.loading) {
            LoadingView()
        }
        else {
            NavigationView{
                List {
                    ForEach(fetcher.players)
                    {
                        player in
                        PlayerItem(player: player)
                    }
                }.navigationTitle("Players")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
