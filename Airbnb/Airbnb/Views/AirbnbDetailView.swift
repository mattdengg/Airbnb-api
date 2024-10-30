//
//  AirbnbDetailView.swift
//  Airbnb
//
//  Created by Matthew Deng on 2024-10-30.
//

import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    var body: some View {
        ScrollView(.vertical) {
            // Picture
            Image("DefualtImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
                .padding()
            // Info
            VStack (alignment: .leading) {
                Group {
                    Text(model.city ?? "")
                        .font(.caption2)
                    Text(model.column_19 ?? "")
                        .font(.caption)
                        .bold()
                    Text(model.neighbourhood ?? "")
                        .font(.caption)
                }
                .padding(.leading)
                Text(model.name ?? "")
                    .frame(maxWidth: .infinity , alignment: .leading)
                    .font(.title2)
                    .padding()
            }
            // Etc.
        }
    }
}

