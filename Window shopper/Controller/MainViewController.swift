import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wegeText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let calculateButton = UIButton(
            frame: CGRect(x: 0 , y: 0, width: view.frame.size.width, height:60))
        calculateButton.backgroundColor = UIColor.orange
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitle("\(UIColor.white)", for: .normal)
        calculateButton.addTarget(self, action:
                                    #selector(MainViewController.calculate), for: .touchUpInside)
        
    }
    
    @objc func calculate() {
        
    }
}

