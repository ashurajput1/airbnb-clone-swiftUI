//
//  ExploreView.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 24/04/24.
//

import SwiftUI

struct ExploreView: View {
    @State var showDestinationSearchView = false
    @State var destination = ""
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        
        NavigationStack
        {
            if showDestinationSearchView
            {
                destinationSearchView(viewModel: viewModel, show: $showDestinationSearchView,destination: $destination)
            }
            else
            {
                ScrollView{
                    LazyVStack()
                    {
                        searchView(destination: destination)
                            .onTapGesture {
                                showDestinationSearchView.toggle()
                            }
                        ForEach(viewModel.listing) { listing in
                            NavigationLink(value: listing) {
                                listingView(listing: listing)
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
