import UIKit

let age:Int = 20

if age < 5 {
    print("Free entry")
}
else if age >= 5 && age <= 12 {
    print("Ticket price is $10")
}
else if age >= 13 && age <= 64 {
    print("Ticket price is $15")
}
else if age > 65 {
    print("Ticket price is $8")
}
else {
    print("Please enter a valid age")
}
