//
//  ExploreView.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 24/04/24.
//

import SwiftUI

struct ExploreView: View {
    @State var showDestinationSearchView = false
    var body: some View {
        
        NavigationStack
        {
            if showDestinationSearchView
            {
                destinationSearchView(show: $showDestinationSearchView)
            }
            else
            {
                ScrollView{
                    LazyVStack()
                    {
                        searchView()
                            .onTapGesture {
                                showDestinationSearchView.toggle()
                            }
                        ForEach(DeveloperPreview.shared.listing) { listing in
                            NavigationLink(value: listing) {
                                listingView(imageUrls: listing.imageUrl!)
                            }
                         
                        }
                    }
                    
                }
                .navigationDestination(for: ListingModel.self) { listing in
                    lisitngDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                        .toolbar(.hidden, for: .tabBar)
                }
            }

        }
       
    }
}

#Preview {
    ExploreView()
}
