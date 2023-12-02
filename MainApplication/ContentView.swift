//
//  ContentView.swift
//  MainApplication
//
//  Created by Lalana Chamika on 2023-11-29.
//

import SwiftUI
import UI_Kit_Package
import Base_SDK

struct ContentView: View {
    
    @Service private var portfolioService: PortfolioService
    
    var body: some View {
        PotfolioCardView(headingTitile: "portfolio", icon: "icon", holdingAmount: "23,000", netChangeAmount: "21", netChangePercentage: "12%")

    }
}

#Preview {
    ContentView()
}
