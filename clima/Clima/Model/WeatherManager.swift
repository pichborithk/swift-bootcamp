//
//  WeatherManager.swift
//  Clima
//
//  Created by Pichborith Kong on 9/14/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?units=metric"
    let appId = "appid=\(ENV.OWM_API_KEY)"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&\(appId)&q=\(cityName)"
        
        performRequest(urlString: urlString)
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.main.temp)
            print(decodedData.weather[0].description)
        } catch {
            print(error)
        }
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) {
                data, _, error in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
//                    let dataString = String(data: safeData, encoding: .utf8)
//                    print(dataString ?? "")
                    self.parseJSON(weatherData: safeData)
                }
            }
            
            task.resume()
        }
    }
    
    //    func handler(data: Data?, response: URLResponse?, error: Error?) {
    //        if error != nil {
    //            print(error!)
    //            return
    //        }
    //
    //        if let safeData = data {
    //            let dataString = String(data: safeData, encoding: .utf8)
    //            print(dataString ?? "")
    //        }
    //    }
}
