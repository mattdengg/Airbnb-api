//
//  APIService.swift
//  Airbnb
//
//  Created by Matthew Deng on 2024-10-30.
//

import Foundation

final class APIService {
    init() {}
    
    struct Constants {
        static let apiURL = URL(
            string: "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/air-bnb-listings/records?limit=100&refine=city%3A%22Toronto%22&refine=city%3A%22Montreal%22&refine=room_type%3A%22Entire%20home%2Fapt%22"
        )
    }
    
    public func getListings(completion: @escaping (Result<[AirbnbListing], Error>) -> Void ) {
        
        // Checks to see if url exists else returns right away
        guard let url = Constants.apiURL else {
            return
        }
        // Request is made with the URLRequest
        let request = URLRequest(url: url)
        
        // URLSession.shared.dataTask is used to create an asynchronous network request which takes in 3 parameters
        // data: data returned from the server
        // _: URL response
        // error: any error encountered
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            
            // Check to see if data is not nil, with no errors else completion with error || returns
            guard let data, error == nil else {
                if let error {
                    completion(.failure(error))
                }
                return
            }
            
            // If no error and data is valid, try to decode it
            // JSONDecoder().decode(AirbnbListingResponse.self, from: data) tries to convert data into an AirbnbListingResponse object
            // try keyword indicates that this can throw an error if decoding fails
            // if decoding fails, catch block triggers and catches any errors
            do {
                let response = try JSONDecoder().decode(AirbnbListingResponse.self, from: data)
                completion(.success(response.results))
            } catch {
//                let json = try? JSONSerialization.jsonObject(with: data)
//                print(String(describing: json))
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
