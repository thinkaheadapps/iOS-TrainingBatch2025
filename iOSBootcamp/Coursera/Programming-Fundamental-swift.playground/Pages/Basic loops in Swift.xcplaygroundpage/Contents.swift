//: [Previous](@previous)

import Foundation

var greeting = "Basic loops in Swift"

// for loop

for number in 1...5 {
    print("Number: \(number)")
}

let numberPlate = "WW87GP"
for character in numberPlate {
    print("character is = \(character)")
}

for dice in 1...6 {
    print("Dice No \(dice)")
}

//while loop
var firstDice = Int.random(in: 1...6)
var secondDice = Int.random(in: 1...6)
while firstDice != secondDice {
    firstDice = Int.random(in: 1...6)
    secondDice = Int.random(in: 1...6)
}

print("You rolled a double \(firstDice)")

 firstDice = 0
 secondDice = 0
repeat {
  firstDice = Int.random(in: 1...6)
  secondDice = Int.random(in: 1...6)
} while firstDice != secondDice
print("You rolled a double \(firstDice).")
