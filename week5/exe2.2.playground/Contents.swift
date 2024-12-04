import UIKit

func countEvenOdd(start:Int, end:Int) {
    for num in stride(from: start, to: end, by:1) {
        if num % 2 == 0 {
            print("\(num) = Even Number")
        }
        else {
            print("\(num) = Odd Number")
        }
    }
}

countEvenOdd(start: 1, end: 15)
