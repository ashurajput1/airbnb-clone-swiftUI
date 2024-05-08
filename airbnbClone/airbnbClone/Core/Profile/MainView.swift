//
//  MainView.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 01/05/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView
        {
            ExploreView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart.fill") }
            ProfileView()
                .tabItem  { Label("Profile", systemImage: "person.crop.circle") }
        }
    }
}

#Preview {
    MainView()
}
