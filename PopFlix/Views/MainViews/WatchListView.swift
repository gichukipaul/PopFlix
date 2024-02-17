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
            
            VStack {
                HStack {
                    Image(systemName: "chevron.left")
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Text("WatchList")
                        .font(.system(.headline))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image(systemName: "rosette")
                        .font(.headline)
                        .foregroundStyle(.white)
                }
                .padding()
                
                List(0 ..< 10) { item in
                    WatchListItem()
                        .listRowBackground(Color("background"))
                }
                .listStyle(.plain)
            }
        }
    }
}

struct WatchListView_Previews: PreviewProvider {
    static var previews: some View {
        WatchListView()
    }
}
