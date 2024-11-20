import UIKit

let username:String = "user123"
let password:String = "userpas123"

var inputUsername:String = "user123"
var inputPassword:String = "userpas123"

if inputUsername == username && inputPassword == password {
    print("Login successful")
}
else if inputUsername != username && inputPassword == password {
    print("Invalid username")
}
else if inputUsername == username && inputPassword != password {
    print("Invalid password")
}
else {
    print("Invalid username and password")
}
