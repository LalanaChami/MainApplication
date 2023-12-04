//
//  View1Model.swift
//  MainApplication
//
//  Created by Lalana Chamika on 2023-12-03.
//

import Foundation
import Combine
import Base_SDK

class View1Model: ObservableObject {
    
    @Service var portfolioService: PortfolioService
    @Published var potfolioData: [PortfolioEntity] = []
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        subscribeToPortfolioData()
    }
    
    private func subscribeToPortfolioData() {
        portfolioService.$porfolioData
            .sink { [weak self] (returnedPortfolioData) in
                self?.potfolioData = returnedPortfolioData
            }
            .store(in: &cancellables)
    }
}
