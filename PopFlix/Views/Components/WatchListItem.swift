//
//  WatchListItem.swift
//  PopFlix
//
//  Created by Gichuki on 18/02/2024.
//

import SwiftUI

struct WatchListItem: View {
    var body: some View {
        HStack {
                // IMAGE
            AsyncImage(url: URL(string: "https://dummyimage.com/400x600/c8a7db/0011ff.png")) { image in
                image
                    .resizable()
                    .frame(width: 95, height: 120)
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView("Loading")
                    .tint(Color(.systemOrange))
                    .frame(width: 95, height: 120)
            }
            .aspectRatio(contentMode: .fill)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(width: 95, height: 120)
            
                // DETAILS
            VStack(alignment: .leading, spacing: 8) {
                Text("Spiderman No Way Home")
                    .font(.headline)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .foregroundColor(.white)
                
                HStack() {
                    Image(systemName: "star")
                    Text("9.6")
                }
                .foregroundColor(Color(.systemOrange))
                HStack {
                    Image(systemName: "calendar")
                    Text("2021")
                }
                
                HStack {
                    Image(systemName: "clock")
                    Text("148 Minutes")
                }
                
                HStack {
                    Image(systemName: "ticket")
                    Text("Action")
                }
                
            }
            .font(.custom("Poppins", size: 12))
            .foregroundStyle(.white)
            .padding()
            .background(Color("background"))
        }
        .padding(.horizontal, 16)
    }
}

struct WatchListItem_Previews: PreviewProvider {
    static var previews: some View {
        WatchListItem()
    }
}
