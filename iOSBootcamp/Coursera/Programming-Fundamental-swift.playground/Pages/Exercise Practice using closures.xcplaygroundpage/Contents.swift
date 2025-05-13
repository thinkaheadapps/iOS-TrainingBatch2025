//: [Previous](@previous)

import Foundation

var greeting = "Exercise: Practice using closures"

var goldBars = 0
let unlockTreasureChest = { (inventory: inout Int) in
  inventory += 100
}
unlockTreasureChest(&goldBars)
print(goldBars)

