//: [Previous](@previous)

import Foundation

var greeting = "Exercise: Using conditions and loops"

//Step 1: Creating constants
let levels = 10
let freeLevels = 4
let bonusLevel = 3

//Step 2: Creating a for in loop
for level in 1...levels {
    //Step 3: Creating an if statement to assess if current level is a bonus level
  if level == bonusLevel {
    print("Skip bonus level \(bonusLevel).")
    continue
  }
    
  print("Play level \(level).")
   // Step 5: Creating an if statement to assess if current level is a free level
  if level == freeLevels {
    print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
    break
  }
}
