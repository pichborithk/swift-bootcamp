//
//  WeatherData.swift
//  Clima
//
//  Created by Pichborith Kong on 9/14/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let weather: [Weather]
    let main: Main
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
}
