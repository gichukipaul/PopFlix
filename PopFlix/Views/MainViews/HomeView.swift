//
//  HomeView.swift
//  PopFlix
//
//  Created by Gichuki on 11/02/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText: String = ""
    @FocusState private var searchFieldIsFocused: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("background"))
                .ignoresSafeArea()
            VStack {
                Text("What do you want to watch?")
                    .font(.system(size: 18))
                
                HStack {
                    TextField("Search",text: $searchText)
                        .focused($searchFieldIsFocused)
                        //                    .font("Poppins")
                        .font(.system(size: 14))
                        .foregroundStyle(Color.init(red: 103, green: 104, blue: 109))
                        .lineLimit(1)
                        .truncationMode(Text.TruncationMode.tail)
                        .submitLabel(.search)
                        .onSubmit {
                                // search
                        }
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.init(red: 103, green: 104, blue: 109))
                }
                .padding()
                .frame(width:327, height:44)
                .overlay {
                    Capsule()
                        .stroke(Color.black)
                }
                
                    // Discover view
                
                    // Selection view - Now playing, Upcoming, Top Rated, Popular
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
