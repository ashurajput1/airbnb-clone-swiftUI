//
//  File.swift
//  airbnbClone
//
//  Created by FuturesoftM2 on 03/05/24.
//

import Foundation

class DeveloperPreview {
    var listing:[ListingModel] = [.init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: UUID().uuidString, ownerImageUrl: "jsmith-apva", numberOfBedrooms: 3, numberOfBathrooms: 2, numberOfGuests: 12, numberOfBeds: 3,pricePerNight: 450, imageUrl: ["hotel1","hotel2","hotel3","hotel4"], latitude: 25.7850, longitude: -80.1396, address: "124-Main-st", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.alarmSystem,.wifi,.balcony,.kitchen,.pool,.tv], types: .villa),.init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: UUID().uuidString, ownerImageUrl: "jsmith-apva", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 12, numberOfBeds: 3,pricePerNight: 450, imageUrl: ["hotel3","hotel4","hotel2","hotel1"], latitude: 25.7850, longitude: -80.1396, address: "124-Main-st", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.alarmSystem,.wifi,.balcony,.kitchen,.pool,.tv], types: .villa),.init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: UUID().uuidString, ownerImageUrl: "jsmith-apva", numberOfBedrooms: 3, numberOfBathrooms: 2, numberOfGuests: 12, numberOfBeds: 3,pricePerNight: 450, imageUrl: ["hotel4","hotel3","hotel2","hotel1"], latitude: 25.7850, longitude: -80.1396, address: "124-Main-st", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.alarmSystem,.wifi,.balcony,.kitchen,.pool,.tv], types: .villa)]
    static let shared = DeveloperPreview()
    
    private init() {
        print("dskfjnads")
        // Private initializer to prevent external instantiation
    }
    

    
}
