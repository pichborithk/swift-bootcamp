//
//  WeatherData.swift
//  Clima
//
//  Created by Pichborith Kong on 9/14/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

// struct WeatherData: Decodable {
struct WeatherData: Codable {
    let name: String
    let weather: [Weather]
    let main: Main
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
    let description: String
}
