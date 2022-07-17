import UIKit

@IBDesignable

class CurrencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {
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

        clipsToBounds = true

        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
        }

        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = UIColor.gray
        currencyLabel.textAlignment = .center
        currencyLabel.layer.cornerRadius = 5.0
        // currencyLabel.text = UIColor(white: 1, alpha: 0.3)
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }

}
