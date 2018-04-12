//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let defaultTemp = "N/A"

var getTemp: String? = "40"

var displayTemp = getTemp ?? defaultTemp

print (displayTemp)


//Logical Operations

let usernameFilled = true
let passwordFilled = true

// && - AND - if both are true ->true
// || - OR - if any one is true -> true

if usernameFilled && passwordFilled {
    print("You are login....")
}else {
    print ("Trying to login again")
}

print(!usernameFilled)
