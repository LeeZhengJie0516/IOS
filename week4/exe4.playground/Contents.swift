import UIKit

for num in 1...20 {
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
