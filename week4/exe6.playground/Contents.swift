import UIKit

//for i in 1...4 {
//    for _ in 1...i {
//        print("*", terminator: "")
//    }
//    print("")
//}
//
//for i in 1...3 {
//    for _ in stride(from: i, to: 4, by: 1) {
//        print("*", terminator: "")
//    }
//    print("")
//}


func tophalf_diamond(TOPstart:Int, TOPend:Int) {
    for i in 1...4 {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print("")
    }
}

func bothalf_diamond(BOTstart:Int, BOTend:Int) {
    for i in 1...3 {
        for _ in stride(from: i, to: 4, by: 1) {
            print("*", terminator: "")
        }
        print("")
    }
}

tophalf_diamond(TOPstart: 1, TOPend: 4)
bothalf_diamond(BOTstart: 1, BOTend: 3)

