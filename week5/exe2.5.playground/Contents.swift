import UIKit

func sumInRange(start:Int, end:Int){
var sum = 0
    for n in start ... end {
        sum += n
    }
    print(sum)
}

sumInRange(start: 3, end: 6)
