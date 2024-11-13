import UIKit

var price:String = "50.00"
let pricetype = type(of: price)

if let priceDouble = Double(price){
    print("The price is \(price)")
} else {
    print("Invalid number format")
}


