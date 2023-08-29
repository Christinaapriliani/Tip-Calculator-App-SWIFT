import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        if let billAmount = Double(billTextField.text ?? "0") {
            let tipPercentage = Int(tipPercentageSlider.value)
            let tipAmount = billAmount * Double(tipPercentage) / 100
            let totalAmount = billAmount + tipAmount
            
            tipAmountLabel.text = String(format: "$%.2f", tipAmount)
            totalAmountLabel.text = String(format: "$%.2f", totalAmount)
        }
    }

    @IBAction func tipPercentageChanged(_ sender: UISlider) {
        let tipPercentage = Int(sender.value)
        tipPercentageLabel.text = "\(tipPercentage)%"
    }
}
