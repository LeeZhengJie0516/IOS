import UIKit

for i in 1...4 {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}

for i in 1...3 {
    for _ in stride(from: i, to: 4, by: 1) {
        print("*", terminator: "")
    }
    print("")
}

