//
//  ExploreView.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 24/04/24.
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
                        if viewModel.listing.count == 0 {
                            VStack(alignment:.center){
                                Text("No Item Found")
                                    .font(.title)
                                    .foregroundStyle(.black)
                                    .bold()
                            }
                            .frame(height: 600)
                           
                        } else {
                            ForEach(viewModel.listing) { listing in
                                NavigationLink(value: listing) {
                                    listingView(listing: listing)
                                }
                             
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
