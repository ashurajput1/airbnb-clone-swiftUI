//
//  listingImageCarosoulView.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 25/04/24.
//

import SwiftUI

struct listingImageCarosoulView: View {
    var images:[String]
    init(images: [String]) {
        self.images = images
    }
    var body: some View {
        TabView{
            ForEach(images,id: \.self) { images in
                Image(images)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    listingImageCarosoulView(images: ["image1"])
}
