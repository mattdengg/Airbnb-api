# Airbnb-Clone

This API provides access to Airbnb listings, allowing users to fetch property data such as location, price, amenities, and more. The data is sourced from OpenDataset, a public data source providing free and open datasets for various applications.

Table of Contents
```
•	Overview
•	Getting Started
•	API Endpoints
•	Data Model
•	Usage Examples
•	Dependencies
•	Acknowledgments
```

## Overview

The Airbnb Listings [API](https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/air-bnb-listings/records?limit=100&refine=city%3A%22Toronto%22&refine=city%3A%22Montreal%22&refine=room_type%3A%22Entire%20home%2Fapt%22) is designed to provide easy access to Airbnb listing information for developers. This project uses data from OpenDataset, specifically the Airbnb dataset, and exposes endpoints for retrieving listings.

## Getting Started

Prerequisites
```
•	Swift 5.0 or later
•	Xcode 12 or later
•	iOS 14.0 or later
```
Installation

Clone the repository to your local machine:

git clone 

## API Endpoints

GET /listings

Fetches a list of available Airbnb listings.

```
Response Format:
{
    "listings": [
        {
            "id": "1234",
            "name": "Cozy Studio Downtown",
            "location": "New York, NY",
            "price": 150,
            "amenities": ["Wi-Fi", "Air Conditioning", "Kitchen"]
        },
        ...
    ]
}
```


GET /listings/{id}

Fetches detailed information for a specific Airbnb listing by ID.
```
Response Format:
{
    "id": "1234",
    "name": "Cozy Studio Downtown",
    "location": "New York, NY",
    "price": 150,
    "description": "A cozy studio in the heart of downtown.",
    "amenities": ["Wi-Fi", "Air Conditioning", "Kitchen"]
}
```



### Data Model

AirbnbListing

The main model used to represent an Airbnb listing.
```
•	Attributes:
•	id: Unique identifier for the listing
•	name: Title of the Airbnb listing
•	location: Location of the listing
•	price: Price per night in USD
•	description: Description of the listing
```

## Usage Examples

To fetch all listings, use the following Swift code in your project:

let viewModel = AirbnbListingViewModel()

viewModel.fetchListings { result in
    switch result {
    case .success(let listings):
        print("Fetched \(listings.count) listings.")
    case .failure(let error):
        print("Error fetching listings: \(error)")
    }
}

## Dependencies

This project uses:
```
•	URLSession: For making HTTP requests.
•	Combine (Optional): For managing asynchronous operations.
•	SwiftUI: For UI components (if you’re using the provided UI example).
```
## Acknowledgments

Data for this project was sourced from OpenDataset.
