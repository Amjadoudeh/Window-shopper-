import UIKit

class CurrencyTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor =  UIColor(white: 1, alpha: 0.1)
        layer.cornerRadius = 10.0
        textAlignment = .center
        textColor = UIColor.white
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
        }
    }
}
