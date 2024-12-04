import UIKit

//let numbers = [3,5,1,4]
//
//for num in numbers {
//    for n in 1...num {
//        print("*", terminator: "")
//    }
//    print()
//}

func histogram_generator(numbers:[Int]) {
    for num in numbers {
        for n in 1...num {
            print("*", terminator: "")
        }
        print()
    }
}

histogram_generator(numbers: [3,5,1,4])
