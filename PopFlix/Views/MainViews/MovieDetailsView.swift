//
//  MovieDetailsView.swift
//  PopFlix
//
//  Created by Gichuki on 15/02/2024.
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
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Text("Details")
                        .font(.system(.headline))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image(systemName: "rosette")
                        .font(.headline)
                        .foregroundStyle(.white)
                }
                .padding()
                
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
                    .font(.headline)
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
                .padding(.top, -60)
                
                HStack {
                    HStack {
                        Image(systemName: "calendar")
                            
                        Text("2021")
                            
                        Text("|")
                            .fontWeight(.bold)
                    }
                    
                    HStack {
                        Image(systemName: "clock")
                        
                        Text("148 Minutes")
                        
                        Text("|")
                            .fontWeight(.bold)
                    }
                    
                    HStack {
                        Image(systemName: "ticket")
                        
                        Text("Action")
                    }
                    
                }
                .font(.custom("Poppins", size: 12))
                .foregroundStyle(.white)
                .opacity(0.7)
                .padding()
                
                HStack {
                    Text("About Movie")
                    
                    Text("Reviews")
                    
                    Text("Cast")
                }
                .padding()
                
                VStack {
                    Text("LOOOOOONG TEXT GOES HERE")
                    
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView()
    }
}
