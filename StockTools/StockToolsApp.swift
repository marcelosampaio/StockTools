//
//  StockToolsApp.swift
//  StockTools
//
//  Created by Marcelo Sampaio on 24/07/24.
//

import SwiftUI

@main
struct StockToolsApp: App {
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environmentObject(AppState())
        }
    }
}
