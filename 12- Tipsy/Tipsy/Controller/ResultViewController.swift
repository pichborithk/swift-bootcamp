//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Pichborith Kong on 3/26/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!

    var result = "0.0"
    var tipPercentage = "10%"
    var splitNumber = "2"

    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = result
        settingLabel.text = "Split between \(splitNumber) people, with \(tipPercentage) tip."
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    // // MARK: - Navigation
    //
    // // In a storyboard-based application, you will often want to do a little preparation before navigation
    // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //    // Get the new view controller using segue.destination.
    //    // Pass the selected object to the new view controller.
    // }
}
