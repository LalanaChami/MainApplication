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
    
    init() {
        setupServiceContainer()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
}

private extension MainApplicationApp {

    func setupServiceContainer() {
        ServiceContainer.register(type: PortfolioService.self, PortfolioService())
    }
    
}
