//
//  SearchView.swift
//  PopFlix
//
//  Created by Gichuki on 11/02/2024.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("background"))
                .ignoresSafeArea()
            Text("Hello World, From SSearch")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
