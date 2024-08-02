//
//  AppState.swift
//  StockTools
//
//  Created by Marcelo Sampaio on 24/07/24.
//

import Foundation

class AppState: ObservableObject {
    @Published var stocks: [StockViewModel] = []
    
}
