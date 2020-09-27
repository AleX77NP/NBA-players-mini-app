//
//  PlayerItem.swift
//  nba_players
//
//  Created by Aleksandar on 27/09/2020.
//

import Foundation
import SwiftUI

struct PlayerItem: View {
    var player: Player
    
    var body: some View {
        NavigationLink(destination: PlayerWebView(url: player.link)) {
            HStack{
                Image(player.img).resizable()
                    .frame(width: 80, height: 60, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 2.0))
                
                
                VStack {
                    HStack {
                        Text(player.full_name)
                            .font(.headline)
                        Text("Age: " + player.age)
                    }
                        Spacer()
                        Text(player.team).font(.subheadline)
                        
                }
            }
        }
    }
}
