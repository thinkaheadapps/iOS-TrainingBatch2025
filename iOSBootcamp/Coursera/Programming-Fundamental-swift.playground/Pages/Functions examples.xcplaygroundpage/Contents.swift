//: [Previous](@previous)

import Foundation

var greeting = "Functions examples"

func showPhi() {
   print("The value of phi is (√5 + 1) ÷ 2")
}

showPhi()


func double(passedValue: Int) {
  let result = passedValue * 2
  print("Double \(passedValue) is \(result)")
}

double(passedValue: 10)

func multiply(firstValue: Int, secondValue: Int) -> Int {
  let result = firstValue * secondValue
  return result
}

multiply(firstValue: 10, secondValue: 20)
