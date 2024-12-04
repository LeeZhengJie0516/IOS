import UIKit

func printoddNum(start:Int, end:Int) {
    for num in stride (from: start, to: end, by: 2){
        print(num)
    }
}
printoddNum(start: 8, end: 30)
