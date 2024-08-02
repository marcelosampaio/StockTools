//
//  Stock.swift
//  StockTools
//
//  Created by Marcelo Sampaio on 24/07/24.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
    let historicalPrices: [Double]
}
