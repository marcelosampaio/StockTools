//
//  WebService.swift
//  StockTools
//
//  Created by Marcelo Sampaio on 24/07/24.
//

import Foundation

enum NetworkError: Error {
    case invalidServerResponse
}

class WebService {
    func fetchStocks() async throws -> [Stock] {
        
        let (data, response) = try await URLSession.shared.data(from: Constants.Urls.allStocks!)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }
            
        let stocks = try JSONDecoder().decode([Stock].self, from: data)
        return stocks        
    }
}
