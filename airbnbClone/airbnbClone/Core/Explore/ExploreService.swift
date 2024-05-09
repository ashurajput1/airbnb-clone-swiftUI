//
//  ExploreService.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 07/05/24.
//

import Foundation


class ExploreService
{
    func fetchListing() -> [ListingModel]
    {
        return DeveloperPreview.shared.listing
    }
}
