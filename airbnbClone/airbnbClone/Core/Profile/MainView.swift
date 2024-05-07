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
                .tabItem { Label("search", systemImage: "magnifyingglass") }
            listingView(imageUrls: DeveloperPreview.shared.listing[0].imageUrl!)
                .tabItem { Label("heart", systemImage: "heart.fill") }
            ProfileView()
                .tabItem  { Label("wishlist", systemImage: "checklist.checked.rtl") }
        }
    }
}

#Preview {
    MainView()
}
