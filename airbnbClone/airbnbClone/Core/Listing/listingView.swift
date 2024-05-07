//
//  listingView.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 24/04/24.
//

import SwiftUI

struct listingView: View {
    var imageUrls:[String]?
    init(imageUrls:[String]) {
        self.imageUrls = imageUrls
    }
    var body: some View {
        VStack(spacing:8)
        {
            listingImageCarosoulView(images: self.imageUrls!)
            .frame(height: 400)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
            HStack(alignment:.top) {
                VStack(alignment:.leading) {
                    HStack {
                        Text("Miami,")
                            .bold()
                        Text("Florida")
                            .bold()
                    }
                    Text("12 mi away")
                    
                    Text("Nov 3 - 10")
                    Text("$567 Hotel")
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
    listingView(imageUrls: DeveloperPreview.shared.listing[0].imageUrl!)
}
