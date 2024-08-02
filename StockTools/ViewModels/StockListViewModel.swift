//
//  StockListViewModel.swift
//  StockTools
//
//  Created by Marcelo Sampaio on 24/07/24.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    let appState: AppState
    
    init(appState: AppState) {
        self.appState = appState
    }
    
    func getStocks() async {
        do {
            let stocks = try await WebService().fetchStocks()
            appState.stocks = stocks.map(StockViewModel.init)
        } catch {
            print("❌ error: \(error)")
        }
    }
}
