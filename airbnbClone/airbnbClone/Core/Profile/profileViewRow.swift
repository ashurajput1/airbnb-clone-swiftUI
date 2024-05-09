//
//  profileViewRow.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 30/04/24.
//

import SwiftUI

struct profileViewRow: View {
    var rowLabel:String = ""
    var rowImage:String = ""
    var body: some View {
        HStack(spacing:20)
        {
            Image(systemName: rowImage)
            Text("\(rowLabel)")
            Spacer()
            Image(systemName: "arrow.right")
        }
        .frame(maxWidth:.infinity,alignment: .leading)
        .background()
        .padding()
        
       
    }
}

#Preview {
    profileViewRow(rowLabel: "cmas", rowImage: "link")
}
