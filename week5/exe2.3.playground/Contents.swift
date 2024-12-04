import UIKit

func multiplicationTable(n:Int) {
    if n > 0 {
        for i in 1 ... 12 {
            print("\(i) * \(n) = \(i * n)")
        }
    }
    else {
        print("Please enter a positive number.")
    }
}

multiplicationTable(n: 3)
