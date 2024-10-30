//
//  AirbnbListingViewModel.swift
//  Airbnb
//
//  Created by Matthew Deng on 2024-10-30.
//

import Foundation

final class AirbnbListingViewModel: ObservableObject, Observable {
    private let service = APIService()
    
    @Published var listings: [AirbnbListing] = []
    
    public func fetchListings() {
        service.getListings { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let models):
                    self?.listings = models
                case .failure:
                    break
                }
            }
        }
    }
}
