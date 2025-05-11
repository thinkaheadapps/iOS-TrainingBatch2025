//: [Previous](@previous)

import Foundation

var greeting = "Using different types with arrays"

var aArray:[Int] = [1,2,3]
var bArray:[Int] = [4,5,6]

let cArray = aArray + bArray
print(cArray)

//Mixed type of array
// Any type

var anArray:[Any] = [59]

anArray.append(33.5)
anArray.append("Orange")
print(anArray)

