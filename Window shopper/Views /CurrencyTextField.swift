import UIKit

@IBDesignable

class CurrencyTextField: UITextField {
    
    override  func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor =  UIColor(white: 1, alpha: 0.3)
        layer.cornerRadius = 10.0
        textAlignment = .center
        textColor = UIColor.white
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
        }
    }
    
}
