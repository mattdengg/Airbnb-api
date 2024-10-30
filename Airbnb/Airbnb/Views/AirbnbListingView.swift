//
//  AirbnbListingView.swift
//  Airbnb
//
//  Created by Matthew Deng on 2024-10-30.
//

import SwiftUI

struct AirbnbListingView: View {
    @StateObject var viewModel = AirbnbListingViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.listings.isEmpty {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                } else {
                    List(viewModel.listings) { listing in
                        NavigationLink(destination: AirbnbDetailView(model: listing), label: {
                            AirbnbListingCardView(model: listing)
                        })
                    }
                }
            }
            .navigationTitle("Airbnb")
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}

//#Preview {
//    AirbnbListingView()
//}
