//
//  MainApplicationApp.swift
//  MainApplication
//
//  Created by Lalana Chamika on 2023-11-29.
//

import SwiftUI
import Base_SDK

@main
struct MainApplicationApp: App {
    
    @StateObject private var view1Model = View1Model()
    
    init() {
        setupServiceContainer()
    }
    
    var body: some Scene {
        WindowGroup {
            View1()
                .environmentObject(view1Model)
        }
    }
    
}

private extension MainApplicationApp {

    func setupServiceContainer() {
        ServiceContainer.register(type: PortfolioService.self, PortfolioService())
    }
    
}
