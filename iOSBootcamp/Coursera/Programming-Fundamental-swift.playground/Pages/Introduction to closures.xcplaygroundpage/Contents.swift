//: [Previous](@previous)

import Foundation

var greeting = "Closure"

print(greeting)

func myFunction() {
    print("inside function")
}
myFunction()

var myClosure = {() -> () in
    print("Inside Closure function")
}

myClosure()

//arguments

var myArgumentedClosure = {(name: String) -> () in
    print("Name = \(name)")
}

myArgumentedClosure("Grace")

//Returning Value

var closureSum = {(num1:Int, num2:Int) -> Int in
    return num1 + num2
}

var result = closureSum(10,20)
print("Result : \(result)")






