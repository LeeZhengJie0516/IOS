import UIKit

var myBY:Int = 2003
let currentYear = Calendar.current.component(.year, from: Date())

let age = currentYear - myBY

print("Age: \(age)")


