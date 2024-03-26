//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Pichborith Kong on 9/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI? = nil
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
//            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(hex: "#82A0D8")!)
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.getUIColorByHex(hex: "82A0D8"))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor(hex: "#A8DF8E")!)
        } else {
//            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor(hex: "#c63d2f")!)
            
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor { _ in #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1) }) // Type UIColor {_ in return #colorLiteral()}
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
