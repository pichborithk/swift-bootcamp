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
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip: Float = 1.0
    var billTotal: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
//        if sender.currentTitle == "0%" {
//            zeroPctButton.isSelected = true
//            tip = 0.0
//        } else if sender.currentTitle == "20%" {
//            twentyPctButton.isSelected = true
//            tip = 0.2
//        } else {
//            tenPctButton.isSelected = true
//            tip = 0.1
//        }
        sender.isSelected = true
//        tip = Double(String(sender.currentTitle!.dropLast()))! / 100
        tip = Float(String(sender.currentTitle!.dropLast()))! / 100
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = Float(billTextField.text!)
        let splitNumber = Float(splitNumberLabel.text ?? "2.0")
        billTotal = (bill! + (bill! * tip)) / splitNumber!
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "goToResults" {
              let destinationVC = segue.destination as! ResultsViewController
              destinationVC.result = String(format: "%.2f", billTotal)
              destinationVC.tip = tip
              destinationVC.split = splitNumberLabel.text!
          }
      }
}

