//
//  ExploreService.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 07/05/24.
//

import Foundation


class ExploreService
{
    func fetchListing() async throws -> [ListingModel]
    {
        return DeveloperPreview.shared.listing
    }
}
