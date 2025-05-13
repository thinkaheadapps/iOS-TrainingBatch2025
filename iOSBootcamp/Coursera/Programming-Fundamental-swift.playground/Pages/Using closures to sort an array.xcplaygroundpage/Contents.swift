//: [Previous](@previous)

import Foundation

var greeting = "Using closures to sort an array"

func forward(s1: String, s2: String) -> Bool {
    return s1 > s2
}

var result = forward(s1: "10", s2: "100")
print("result: \(result)")

let letters = ["A","Y","X","O","E"]

let aResult = letters.sorted(by: forward)
print(aResult)

//let rResult = letters.sorted(by: {(s1:String,s2:String)->Bool in
//   return s1 < s2
//})

//let rResult = letters.sorted(by: {(s1,s2) in
//   return s1 < s2
//})

let rResult = letters.sorted(by: {$0 < $1})
print(rResult)


