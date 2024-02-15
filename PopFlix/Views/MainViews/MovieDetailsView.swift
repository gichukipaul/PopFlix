//
//  MovieDetailsView.swift
//  PopFlix
//
//  Created by user on 15/02/2024.
//

import SwiftUI

struct MovieDetailsView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("background"))
                .ignoresSafeArea()
            
            VStack {
                // TOPBAR
                HStack {
                    Image(systemName: "chevron.left")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Text("Details")
                        .font(.system(.title))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image(systemName: "bookmark.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
                .padding()
//                .padding(.bottom, 15)
                
                    // BACKGROUND POSTER
                ZStack(alignment: .bottomTrailing) {
                    AsyncImage(url: URL(string: "https://dummyimage.com/600x400/000/0011ff.png")) { image in
                        image
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 1.5)
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        ProgressView("Loading")
                            .tint(Color(.systemOrange))
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 1.5)
                    }
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 1.5)
                    
                    HStack(alignment: .bottom) {
                        Image(systemName: "star")
                        Text("9.6")
                    }
                    .font(.title3)
                    .foregroundColor(Color(.systemOrange))
                    .padding()
                    
                }
                
                // FRONT POSTER
                HStack(alignment: .bottom) {
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
                    
                    Text("Spiderman No Way Home")
                        .font(.headline)
                        .lineLimit(2)
                        .foregroundColor(.white)
                        .padding(.bottom, 8)
                   
                }
            }
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView()
    }
}
