//
//  AirbnbListingCardView.swift
//  Airbnb
//
//  Created by Matthew Deng on 2024-10-30.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let model: AirbnbListing
    
    var body: some View {
        HStack {
            Image("DefualtImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipped()
            
            
            VStack {
                Text(model.name ?? "Listing")
                    .font(.title3)
                    .bold()
                Text(model.column_20 ?? "-")
                    .foregroundStyle(Color(.secondaryLabel))
                    .font(.body)
            }
        }
    }
}

