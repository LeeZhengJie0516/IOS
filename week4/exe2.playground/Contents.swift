import UIKit

/*let num = 2534
var strnum = String(num)

var sum = 0

for char in strnum {
    if let int = Int(String(char)) {
        sum += int
    }
}

print(sum)*/


func calc_sum_digits(num:String) -> Int{
    var sum = 0

    for char in num {
        if let int = Int(String(char)) {
            sum += int
        }
    }
    return sum
}

let result = calc_sum_digits(num: "3372")
print(result)
