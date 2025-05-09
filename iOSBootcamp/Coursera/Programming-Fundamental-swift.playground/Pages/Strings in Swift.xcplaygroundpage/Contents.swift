//: [Previous](@previous)

import Foundation

var greeting = "String in Swift"


//String mutability - immutable
let myString = "Hello World"

// Assign to variable - mutable
var mySyrin1 = "Hello World"

// Concatination - +Operator
let stringA = "Hi"
let stringB = "There"
let newString = stringA + stringB
print("newString = \(newString)")

//Comparing Strigs - Prefix and Suffix
let quote = "Hello World"
quote.hasPrefix("H")
quote.hasSuffix("rld")

let aString = "Hi there"
let upper = aString.uppercased()
print("upper case = \(upper)")
let lower = aString.lowercased()
print("lower case = \(lower)")

//counting number of characters in string
let aCount = aString.count
print("counting = \(aCount)")

//Multiline string literals
let mlString = """
    Coffee
    Latte
Flat White
Tea
Hot chocolate
Bovril
"""
let mlStringLength = mlString.count
print("mlStringLength = \(mlStringLength)")





