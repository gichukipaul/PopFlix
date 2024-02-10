//
//  WatchListView.swift
//  PopFlix
//
//  Created by Gichuki on 11/02/2024.
//

import SwiftUI

struct WatchListView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("background"))
                .ignoresSafeArea()
        Text("Hello, World!, From WatchList")
        }
    }
}

struct WatchListView_Previews: PreviewProvider {
    static var previews: some View {
        WatchListView()
    }
}
