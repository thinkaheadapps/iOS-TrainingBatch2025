//: [Previous](@previous)

import Foundation

var greeting = "Exercise: Tuples"

let credentials = ("", -1111)
if credentials.0 == "" || credentials.1 < 0 {
    print("Invalid")
}
else {
    print("valid")
}

let fullCredentials = (password: "pass", passcode: 1111)
if fullCredentials.password == "pass" || fullCredentials.passcode == 1111 {
    print("Valid Password")
}
else {
    print("Invalid password")
}
