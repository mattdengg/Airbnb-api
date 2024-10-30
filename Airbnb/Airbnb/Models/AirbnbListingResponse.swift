//
//  AirbnbListingResponse.swift
//  Airbnb
//
//  Created by Matthew Deng on 2024-10-30.
//

import Foundation

struct AirbnbListingResponse: Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
