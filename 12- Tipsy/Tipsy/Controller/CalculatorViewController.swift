//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!

    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!

    var tipCalucator = TipCalculator()

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true) // to stop editing billTextField (turn off keyboard)
        zeroPercentButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
        sender.isSelected = true
        tipCalucator.setTipPercentage(sender.currentTitle!)
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true) // to stop editing billTextField (turn off keyboard)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        tipCalucator.calculateTip(billTextField.text!, splitNumberLabel.text ?? "2")

        performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = String(format: "%.2f", tipCalucator.splittedBill)
            destinationVC.tipPercentage = String(format: "%.0f", tipCalucator.tipPercentage * 100) + "%"
            destinationVC.splitNumber = splitNumberLabel.text!
        }
    }
}
