//: [Previous](@previous)

import Foundation

/*
How does ARC (Automatic Reference Counting) work in Swift? Can you explain with an example where a strong reference cycle might occur and how to resolve it?
*/

/*
ARC (Automatic Reference Counting) is Swift's memory management system that automatically keeps track of references to class instances and deallocates them when they're no longer needed. Here's a detailed explanation:
How ARC Works:
Every time you create a new instance of a class, ARC allocates memory to store that instance
ARC maintains a count of how many properties, constants, and variables are currently referring to each class instance
ARC will not deallocate an instance as long as at least one active reference to that instance exists
When the reference count drops to zero, ARC deallocates the memory
Strong Reference Cycle Example:
Here's a classic example where a strong reference cycle (also known as retain cycle) might occur:
*/

class Person {
    let name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let unit: String
    var tenant: Person?
    
    init(unit: String) {
        self.unit = unit
        print("Apartment \(unit) is being initialized")
    }
    
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}

// Creating instances
var john: Person? = Person(name: "John")
var unit4A: Apartment? = Apartment(unit: "4A")

// Creating strong reference cycle
john?.apartment = unit4A
unit4A?.tenant = john

// Attempting to break references
john = nil
unit4A = nil