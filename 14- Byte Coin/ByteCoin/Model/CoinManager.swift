import Foundation

protocol CoinManagerDelegate {
    func didFailWithError(error: Error)
    
    func didUpdatePrice(price: String, currency: String)
}

struct CoinManager {
    
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "apikey=\(DevENV.COIN_API_KEY)"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)?\(apiKey)"
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, _, error in
                if error != nil {
                    return
                }
                
                do {
                    let decodedData = try JSONDecoder().decode(CoinData.self, from: data!)
                    let priceString = String(format: "%.2f", decodedData.rate)
                    self.delegate?.didUpdatePrice(price: priceString, currency: currency)
                } catch {
                    self.delegate?.didFailWithError(error: error)
                }
            }
            
            task.resume()
        }
    }
}
