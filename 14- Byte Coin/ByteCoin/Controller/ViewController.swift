import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bitcoinLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        
        coinManager.delegate = self
        coinManager.getCoinPrice(for: coinManager.currencyArray[0])
        
    }
    
}

// MARK: - UIPickerViewDataSource

extension ViewController : UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
    
}

// MARK: - UIPickerViewDelegate
extension ViewController : UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedCurrency = coinManager.currencyArray[row]
        coinManager.getCoinPrice(for: selectedCurrency)
    }
    
}

// MARK: - CoinManagerDelegate
extension ViewController : CoinManagerDelegate {
    
    func didFailWithError(error: any Error) {
        print(error)
    }
    
    func didUpdatePrice(price: String, currency: String) {
        DispatchQueue.main.sync {
            bitcoinLabel.text = price
            currencyLabel.text = currency
        }
    }
    
    
}
