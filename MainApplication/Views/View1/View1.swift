//
//  View1.swift
//  MainApplication
//
//  Created by Lalana Chamika on 2023-11-29.
//

import SwiftUI
import UI_Kit_Package

struct View1: View {
    @EnvironmentObject var view1Model: View1Model
    
    var body: some View {
        HStack {
//            ForEach(view1Model.potfolioData) { portfolio in
//                PotfolioCardView(headingTitile: portfolio.headingTitile ?? "NA", icon: "icon", holdingAmount: "23,000", netChangeAmount: "21", netChangePercentage: "12%", currency: "AED")
//            }
            PotfolioCardView(headingTitile: "Portfolio View", icon: "icon", holdingAmount: "23,000", netChangeAmount: "+21.24", netChangePercentage: "12%", currency: "AED")
        }
    }
    

}

#Preview {
    View1()
}


