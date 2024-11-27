import UIKit

let numlist = [3, 2, 7, 8]
var smallest = numlist[0]
var largest = numlist[0]

for num in numlist {
    if (num < smallest) {
        smallest = num
    }
    if (num > largest) {
        largest = num
    }
}

print(smallest)
print(largest)
