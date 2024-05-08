//
//  listingView.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 24/04/24.
//

import SwiftUI

struct listingView: View {
    var listing:ListingModel
    init(listing:ListingModel) {
        self.listing = listing
    }
    var body: some View {
        VStack(spacing:8)
        {
            listingImageCarosoulView(images: listing.imageUrl ?? [])
            .frame(height: 400)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
            HStack(alignment:.top) {
                VStack(alignment:.leading) {
                    HStack {
                        Text((self.listing.city ?? "") + "," )
                            .bold()
                        Text((self.listing.state ?? ""))
                            .bold()
                    }
                    Text(self.listing.address ?? "")
                    
                    Text("Nov 3 - 10")
                    
                    Text("$ " + String(listing.pricePerNight ?? 0))
                        .bold()
                }
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }

            
            
        }
        .foregroundStyle(.black)
        .padding()
        
        
    }
}

#Preview {
    listingView(listing: DeveloperPreview.shared.listing[0])
}
