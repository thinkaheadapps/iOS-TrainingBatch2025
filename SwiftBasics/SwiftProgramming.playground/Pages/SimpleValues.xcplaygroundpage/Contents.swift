//: [Previous](@previous)

/**
 Use let to make a constant and var to make a variable. The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once. This means you can use constants to name a value that you determine once but use in many places.
 
 */

let firstName = "Divya"
let lastName = "Rai"
var fullName = "My Name is \(firstName) \(lastName)"
print(fullName)

/**
 If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon.
 */

var impliciteInteger = 10
var implecitFloat = 10.5
var explicitFlaot : Double = 20.0

