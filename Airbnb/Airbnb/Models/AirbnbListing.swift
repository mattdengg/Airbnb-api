//
//  AirbnbListing.swift
//  Airbnb
//
//  Created by Matthew Deng on 2024-10-30.
//

import Foundation

struct AirbnbListing: Codable, Hashable, Identifiable {
    let id: Int?
    let name: String?
    let neighbourhood: String?
    let minimum_nights: Int?
    let city: String?
    let column_19: String?
    let column_20: String?
}

//{
//"id": 42350703,
//"name": "Modern Gem in Toronto * Full Bungalow + Parking*",
//"host_id": 336845400,
//"neighbourhood": "Stonegate-Queensway",
//"room_type": "Entire home/apt",
//"column_10": 176,
//"minimum_nights": 2,
//"number_of_reviews": 2,
//"last_review": "2020-05-30",
//"reviews_per_month": 2,
//"calculated_host_listings_count": 1,
//"availability_365": 151,
//"updated_date": "2020-06-08",
//"city": "Toronto",
//"column_19": "Canada",
//"coordinates": {
//"lon": -79.48567434453845,
//"lat": 43.63346123325748
//},
//"column_20": "Canada, Toronto, Stonegate-Queensway"
//}
