import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!

    @IBAction func clearCalculator(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageText.text = ""
        priceText.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let calculateButton = UIButton(
            frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = UIColor.orange
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(UIColor.white, for: .normal)
        calculateButton.addTarget(self, action:
                                    #selector(MainViewController.calculate), for: .touchUpInside)
        wageText.inputAccessoryView = calculateButton
        priceText.inputAccessoryView = calculateButton

        resultLabel.isHidden = true
        hoursLabel.isHidden = true

    }

    @objc func calculate() {
        if let wageText = wageText.text, let priceText = priceText.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true) // dismissing the keyboard
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

}
