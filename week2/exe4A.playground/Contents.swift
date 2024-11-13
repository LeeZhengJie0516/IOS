import UIKit

var age:Int = 25
let agetype = type(of: age)
print("Datatype before convert:",agetype)

let ageStr = String(age)
let ageStrType = type(of: ageStr)
print("Datatype after convert:",ageStrType)

print("I'm",ageStr,"years old")

