//
//  ListingModel.swift
//  airbnbClone
//
//  Created by Ashutosh Chauhan on 01/05/24.
//

import Foundation
import UIKit


struct ListingModel:Identifiable,Codable,Hashable
{
    let id:String?
    let ownerUid: String?
    let ownerName: String?
    let ownerImageUrl: String?
    let numberOfBedrooms: Int?
    let numberOfBathrooms: Int?
    let numberOfGuests: Int?
    let numberOfBeds: Int?
    var pricePerNight: Int?
    let imageUrl :[String]?
    let latitude: Double?
    let longitude: Double?
    let address: String?
    let city: String?
    let state: String?
    let title: String?
    let  rating: Double?
    let reviews: Int?
    var features: [ListingFeatures]
    var amenities: [ListingAmeneties]
    var types: ListingType
}

enum ListingFeatures:Identifiable,Codable
{
   
    
    case selfCheckIn
    case superHost
    
    
    var id:String{
        switch self{
        case .selfCheckIn:
            return "selfCheckIn"
        case .superHost:
            return "selfCheckIn"
        }
    }
    
}


enum ListingAmeneties:Identifiable,Codable {

    
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var id:String {
        switch self{
        case .pool:
            return "pool"
        case .kitchen:
            return "kitchen"
        case .wifi:
            return "wifi"
        case .laundry:
            return "laundry"
        case .tv:
            return "tv"
        case .alarmSystem:
            return "alarmSystem"
        case .office:
            return "office"
        case .balcony:
            return "balcony"
        }
    }
    var amenetiesImage:String {
        switch self{
        case .pool:
            return "pool"
        case .kitchen:
            return "kitchen"
        case .wifi:
            return "wifi"
        case .laundry:
            return "laundry"
        case .tv:
            return "tv"
        case .alarmSystem:
            return "alarmSystem"
        case .office:
            return "office"
        case .balcony:
            return "balcony"
        }
    }
    var amenetiesName:String {
        switch self{
        case .pool:
            return "pool"
        case .kitchen:
            return "kitchen"
        case .wifi:
            return "wifi"
        case .laundry:
            return "laundry"
        case .tv:
            return "tv"
        case .alarmSystem:
            return "alarmSystem"
        case .office:
            return "office"
        case .balcony:
            return "balcony"
        }
    }
}

enum ListingType:Identifiable,Codable
{
    
    case apartment
    case house
    case townhouse
    case villa
    
    var names:String {
        switch self
        {
        case .apartment:
            return "apartment"
        case .house:
            return "house"
        case .townhouse:
            return "townhouse"
        case .villa:
            return "villa"
        }
    }
    var id:String {
        switch self
        {
        case .apartment:
            return "apartment"
        case .house:
            return "house"
        case .townhouse:
            return "townhouse"
        case .villa:
            return "villa"
        }
    }
}

