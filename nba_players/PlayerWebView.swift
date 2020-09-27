//
//  PlayerWebView.swift
//  nba_players
//
//  Created by Aleksandar on 27/09/2020.
//

import Foundation
import SwiftUI
import WebKit

struct PlayerWebView: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> some UIView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebview  = WKWebView()
        wkWebview.load(request)
        return wkWebview
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
