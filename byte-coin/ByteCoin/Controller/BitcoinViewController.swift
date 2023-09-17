//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class BitcoinViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet var bitcoinLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    @IBOutlet var currencyPicker: UIPickerView!

    var coinManager = CoinManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        currencyPicker.dataSource = self
        currencyPicker.delegate = self

        coinManager.delegate = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        print(coinManager.currencyArray[row])
        coinManager.getCoinPrice(for: row)
    }
}

// MARK: - BitcoinManagerDelegate

extension BitcoinViewController: CoinManagerDelegate {
    func didUpdateBitcoinInfo(_ coinManager: CoinManager, bitcoinInfo: BitcoinModel) {
        DispatchQueue.main.async {
            self.bitcoinLabel.text = bitcoinInfo.rateString
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}
