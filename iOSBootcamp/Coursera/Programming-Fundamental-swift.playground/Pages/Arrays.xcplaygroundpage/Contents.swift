//: [Previous](@previous)

import Foundation

var greeting = "Arrays"

//Array
var train1 = ["wheat","barley","potato","salt","rocks"]
let n = train1.count

for train in 0...n - 1 {
    print(train1[train])
}

train1[1] = "Sugar"
print(train1)

train1.insert("Milk", at: 2)
print(train1)
