//
//  MainView.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 01/05/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView
        {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
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
