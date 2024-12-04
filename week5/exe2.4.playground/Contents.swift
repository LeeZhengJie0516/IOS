import UIKit

func factorial(_ n:Int) -> Int{
    if n == 0 { return 1 }
    else { return n * factorial(n - 1) }
   }

let n = 5
let result = factorial(n)
print("The factorial of \(n) is \(result)")
