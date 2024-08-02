//
//  StockViewModel.swift
//  StockTools
//
//  Created by Marcelo Sampaio on 24/07/24.
//

import Foundation

class StockViewModel: Identifiable {
    private var stock: Stock
    
    init(stock: Stock) {
        self.stock = stock
    }
    
    let id = UUID()
    
    var name: String {
        stock.description
    }
    
    var symbol: String {
        stock.symbol
    }
    
    var price: Double {
        stock.price
    }
    
    var change: String {
        stock.change
    }
    
    var historicalPrices: [Double] {
        stock.historicalPrices
    }
    
}
