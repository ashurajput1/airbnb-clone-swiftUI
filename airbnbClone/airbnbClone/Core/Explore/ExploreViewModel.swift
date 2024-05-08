//
//  ExploreViewModel.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 07/05/24.
//

import Foundation


class ExploreViewModel:ObservableObject
{
    @Published var listing = [ListingModel]()
    var service:ExploreService
    init(service:ExploreService) {
        self.service = service
    }
    
    func fetchListing() async {
        do
        {
            self.listing = try await self.service.fetchListing()
        }
        catch
        {
            print(error)
        }
    }
    
}
