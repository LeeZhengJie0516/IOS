import UIKit

//for num in 1...20 {
//    if num % 3 == 0 && num % 5 == 0 {
//        print("\(num) = FizzBuzz")
//    }
//    else if num % 5 == 0 {
//        print("\(num) = Buzz")
//    }
//    else if num % 3 == 0 {
//        print("\(num) = Fizz")
//    }
//}


func FizzBuzz(start:Int, end:Int) {
    for num in stride(from: start, to: end, by:1) {
        if num % 3 == 0 && num % 5 == 0 {
            print("\(num) = FizzBuzz")
        }
        else if num % 5 == 0 {
            print("\(num) = Buzz")
        }
        else if num % 3 == 0 {
            print("\(num) = Fizz")
        }
    }
}

FizzBuzz(start: 1, end: 20)
