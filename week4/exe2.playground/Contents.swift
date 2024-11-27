import UIKit

let num = 2534
var strnum = String(num)

var sum = 0

for char in strnum {
    if let int = Int(String(char)) {
        sum += int
    }
}

print(sum)
