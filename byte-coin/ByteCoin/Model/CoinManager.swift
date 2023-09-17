//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didFailWithError(error: Error)
    
    func didUpdateBitcoinInfo(_ coinManager: CoinManager, bitcoinInfo: BitcoinModel)
}

struct CoinManager {
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "apikey=\(ENV.COIN_API_KEY)"
    
    let currencyArray = ["AUD", "BRL", "CAD", "CNY", "EUR", "GBP", "HKD", "IDR", "ILS", "INR", "JPY", "MXN", "NOK", "NZD", "PLN", "RON", "RUB", "SEK", "SGD", "USD", "ZAR"]

    func getCoinPrice(for currencyIndex: Int) {
        let urlString = "\(baseURL)/\(currencyArray[currencyIndex])?\(apiKey)"
        
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, _, error in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let bitcoinInfo = self.parseJSON(safeData) {
                        self.delegate?.didUpdateBitcoinInfo(self, bitcoinInfo: bitcoinInfo)
                    }
                }
            }
            
            task.resume()
        }
    }
    
    func parseJSON(_ bitcoinData: Data) -> BitcoinModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(BitcoinData.self, from: bitcoinData)
            let rate = decodedData.rate
            let bitcoinInfo = BitcoinModel(rate: rate)
            
            return bitcoinInfo
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
