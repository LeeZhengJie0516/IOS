import UIKit

let currentHour = Calendar.current.component(.hour, from: Date())

if currentHour >= 5 && currentHour <= 11 {
    print("Good morning!")
}
else if currentHour >= 12 && currentHour <= 17 {
    print("Good afternoon!")
}
else if currentHour >= 18 && currentHour <= 21 {
    print("Good evening!")
}
else {
    print("Good night!")
}
