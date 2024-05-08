//
//  File.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 03/05/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listing:[ListingModel] = [  
        
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Ashutosh chauhan", ownerImageUrl: "jsmith-apva", numberOfBedrooms: 3, numberOfBathrooms: 2, numberOfGuests: 12, numberOfBeds: 3,pricePerNight: 450, imageUrl: ["image1","image2","image5","image3","image4"], latitude: 25.7850, longitude: -80.1396, address: "124-Main-st", city: "Miami", state: "Florida", title: "Miami Villa", rating: 5, reviews: 288, features: [.selfCheckIn,.superHost], amenities: [.alarmSystem,.wifi,.balcony,.kitchen,.pool,.tv], types: .villa),
        
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Nishant", ownerImageUrl: "jsmith-apva", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 12, numberOfBeds: 3,pricePerNight: 300, imageUrl: ["image3","image4","image2","image1","image5"], latitude:  26.850000, longitude: 80.949997, address: "123-Main-st", city: "Lucknow", state: "U.P", title: "Lucknow Villa", rating: 4.86, reviews: 444, features: [.selfCheckIn,.superHost], amenities: [.alarmSystem,.wifi,.balcony,.kitchen], types: .villa),
        
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Prashant", ownerImageUrl: "jsmith-apva", numberOfBedrooms: 6, numberOfBathrooms: 6, numberOfGuests: 1, numberOfBeds: 3,pricePerNight: 450, imageUrl: ["image5","image4","image3","image2","image1"], latitude: 30.7333, longitude:  76.7794, address: "ABC-Main-st", city: "Chandigarh", state: "Punjab", title: "Chandigarh Villa", rating: 3, reviews: 100, features: [.selfCheckIn,.superHost], amenities: [.alarmSystem,.balcony,.kitchen,.tv], types: .villa),
        
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Deepak", ownerImageUrl: "jsmith-apva", numberOfBedrooms: 1, numberOfBathrooms: 4, numberOfGuests: 4, numberOfBeds: 4,pricePerNight: 100, imageUrl: ["image2","image4","image3","image1","image5"], latitude: 23.2599, longitude:  77.4126, address: "Bhopal-Main-st", city: "Bhopal", state: "M.P", title: "Bhopal Apartment", rating: 4.1, reviews: 30, features: [.selfCheckIn,.superHost], amenities: [.alarmSystem,.kitchen,.tv ,.wifi ], types: .apartment),
        
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Ashutosh chauhan", ownerImageUrl: "jsmith-apva", numberOfBedrooms: 1, numberOfBathrooms: 1, numberOfGuests: 1, numberOfBeds: 3,pricePerNight: 50, imageUrl: ["image5","image1","image2","image3","image4"], latitude: 25.7850, longitude: -80.1396, address: "ABC-Main-st", city: "Miami", state: "Florida", title: "ABC Apartment", rating: 5, reviews: 288, features: [.selfCheckIn,.superHost], amenities: [.alarmSystem,.wifi,.balcony,.kitchen,.pool,.tv], types: .apartment),
    ]
    
    private init() {
        // Private initializer to prevent external instantiation
    }
    

    
}
