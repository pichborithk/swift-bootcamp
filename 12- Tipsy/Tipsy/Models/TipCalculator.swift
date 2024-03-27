//
//  TipCalculator.swift
//  Tipsy
//
//  Created by Pichborith Kong on 3/26/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct TipCalculator {
    var splittedBill: Float = 0.0
    var tipPercentage: Float = 0.1

    mutating func setTipPercentage(_ tipString: String) {
        tipPercentage = Float(String(tipString.dropLast()))! / 100
    }

    mutating func calculateTip(_ bill: String, _ splitNumber: String) {
        splittedBill = (Float(bill)! + (Float(bill)! * tipPercentage)) / Float(splitNumber)!
    }
}
