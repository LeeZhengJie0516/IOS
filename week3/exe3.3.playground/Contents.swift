import UIKit

let shippingAddress:String? = "kk"
let result = shippingAddress != nil ? "Shipping to \(shippingAddress!)!" : "No shipping address provided"
print(result)
