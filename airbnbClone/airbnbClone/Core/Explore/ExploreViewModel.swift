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
    var fullList = [ListingModel]()
    var service:ExploreService
    init(service:ExploreService){
        self.service = service
        fetchListing()
    }
    
    func fetchListing(){
        self.listing = self.service.fetchListing()
        self.fullList = self.listing
    }
    func filterByLocation(location:String)
    {
        self.listing = self.fullList
        let newListing =  self.listing.filter { item in
           if item.city == location
           {
           } else
           {
               return false
           }
            return true
        }
        self.listing = newListing
    }
    
}
