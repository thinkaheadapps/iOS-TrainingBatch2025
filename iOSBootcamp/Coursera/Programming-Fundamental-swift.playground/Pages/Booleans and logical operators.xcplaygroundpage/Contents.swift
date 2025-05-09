//: [Previous](@previous)

import Foundation

var greeting = "Booleans and logical operators"
print(greeting)

//If else condition
var waterTemp = 0
print(waterTemp)
if waterTemp == 0 {
    print("Water is freezing")
}
else {
    print("Water is not freezing")
}

// If else
waterTemp = 92
if waterTemp >= 100 {
    print("Bolling water")
}
else {
    print("water is not boiling")
}

//else-if statement
var position = 2
if position == 1 {
    print("You came first")
}
else if position == 2 {
    print("You came second")
}
else {
    print("You did not finish in top two")
}

let coldOutside = true

if coldOutside == true {
    print("Put on warm coat")
}

//AND operator
var temprature = 69

if temprature >= 68 && temprature <= 72 {
    print("Temprature is just right")
}
else {
    print("temprature is too hot or too cold")
}


