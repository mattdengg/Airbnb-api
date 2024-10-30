//
//  AirbnbApp.swift
//  Airbnb
//
//  Created by Matthew Deng on 2024-10-30.
//

import SwiftUI

@main
struct AirbnbApp: App {
    @StateObject private var viewModel = AirbnbListingViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }
    }
}
