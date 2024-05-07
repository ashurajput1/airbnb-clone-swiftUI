//
//  searchView.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 24/04/24.
//

import SwiftUI

struct searchView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack(alignment:.leading) {
                Text("Miami")
                    .bold()
                Text("Any Week - Add Guest")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button("", systemImage: "line.3.horizontal.decrease.circle") {
                print("ashutosh chauhan")
            }
            .foregroundColor(.black)
            
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.2)
                .foregroundStyle(.gray)
                .shadow(color: .black, radius: 0.9)
        }
        .padding()
    }

}

#Preview {
    searchView()
}
