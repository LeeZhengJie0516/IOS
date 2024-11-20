import UIKit

let shippingAddress:String? = "kk"
if let result = shippingAddress {
    print("Shipping to: \(result)")
}
else {
    print("No shipping address provided")
}
