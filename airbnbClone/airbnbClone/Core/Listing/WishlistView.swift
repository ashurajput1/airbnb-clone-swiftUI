//
//  WishlistView.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 01/05/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack
        {
            VStack(spacing:40)
            {
                VStack(alignment: .leading, spacing:8)
                {
                    Text("Log in to view your wishlists.")
                        .font(.system(size: 20,weight: .bold))
                    Text("You can create, view or edit wishlist once yo've logged in")
                }
                .padding(.all,15)
                
                Button(action: {
                    print("Add Login Functionality Here")
                }, label: {
                    Text("log in")
                        .frame(width: 370, height: 50)
                        .bold()
                        .foregroundStyle(.white)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
            .navigationTitle("WishList")
            Spacer()
        }
        


    }
}

#Preview {
    WishlistView()
}
