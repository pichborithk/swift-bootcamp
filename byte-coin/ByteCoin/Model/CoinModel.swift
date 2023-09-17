//
//  BigcoinModel.swift
//  ByteCoin
//
//  Created by Pichborith Kong on 9/17/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let rate: Double

    var rateString: String {
        return String(format: "%.2f", rate)
    }
}
