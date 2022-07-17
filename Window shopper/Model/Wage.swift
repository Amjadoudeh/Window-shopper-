import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Double {
        return Double(price / wage)
    }
}
