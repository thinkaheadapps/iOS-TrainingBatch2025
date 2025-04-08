//: [Previous](@previous)

import Foundation

/*
What is the difference between class, struct, and actor in Swift? When would you use each?
*/

/*
I'll explain the key differences between classes, structs, and actors in Swift, and provide guidance on when to use each.
*/

/*
Key characteristics of classes:
Reference type (passed by reference)
Support inheritance
Allow type casting
Have deinitializers
Reference counting (ARC)
Can have multiple references to the same instance
Use classes when:
You need inheritance
You want reference semantics (multiple parts of your code need to share and modify the same instance)
You're working with Objective-C code
You need to control identity with === operator
You need deinitializers
Examples: View controllers, network managers, file handlers
*/

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func haveBirthday() {
        age += 1
    }
}

/*
Key characteristics of structs:
Value type (passed by copy)
No inheritance
Automatically get a memberwise initializer
Methods that modify properties must be marked as mutating
Each instance has unique copy of its data
Faster than classes due to stack allocation
Use structs when:
You want value semantics (each instance is unique)
The data is relatively small and copying is cheap
You don't need inheritance
You want thread safety by default
Examples: Numbers, strings, arrays, coordinates, dates, URLs

*/

struct Point {
    var x: Double
    var y: Double
    
    mutating func moveBy(x: Double, y: Double) {
        self.x += x
        self.y += y
    }
}

/*
Key characteristics of actors:
Reference type like classes
Built-in thread safety (synchronized access)
No inheritance
Properties and methods are implicitly isolated
Access to actor's mutable state is always asynchronous
Only one task can access the actor's mutable state at a time
Use actors when:
You need thread-safe access to shared mutable state
You want to prevent data races by default
You're working with concurrent code
Examples: Shared resources, banking systems, game state managers
*/

actor BankAccount {
    private var balance: Double
    
    init(initialBalance: Double) {
        self.balance = initialBalance
    }
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) throws {
        guard balance >= amount else {
            throw NSError(domain: "InsufficientFunds", code: 1)
        }
        balance -= amount
    }
    
    func checkBalance() -> Double {
        balance
    }
}

/*
Here's a comparison example showing how these types behave differently:
*/

// Class example - Reference semantics
class ClassPoint {
    var x = 0
    var y = 0
}

let point1 = ClassPoint()
let point2 = point1  // Both point to same instance
point2.x = 100
print(point1.x)  // Prints 100

// Struct example - Value semantics
struct StructPoint {
    var x = 0
    var y = 0
}

var point3 = StructPoint()
var point4 = point3  // Creates a copy
point4.x = 100
print(point3.x)  // Prints 0

// Actor example - Thread-safe reference semantics
actor Counter {
    private var value = 0
    
    func increment() -> Int {
        value += 1
        return value
    }
}

// Usage requires async/await
func useCounter() async {
    let counter = Counter()
    let value = await counter.increment()
    print(value)
}

/*
Decision Making Guidelines:
Choose a Struct when:
The data is small and simple
You want value semantics (copying)
You don't need inheritance
You want thread safety by default
Examples: CGPoint, Date, String, custom value types
Choose a Class when:
You need inheritance
You need reference semantics
You need deinitializers
You're working with UIKit/AppKit
Examples: UIViewController, URLSession, custom view classes
Choose an Actor when:
You need shared mutable state across multiple tasks
You want to prevent data races
You're working with concurrent code
Examples: Shared caches, resource managers, state coordinators
Additional Considerations:
Performance:
Structs are generally faster as they're allocated on the stack
Classes are allocated on the heap and require ARC
Actors have additional synchronization overhead
Thread Safety:
Structs are inherently thread-safe when used as constants
Classes require manual synchronization
Actors provide automatic synchronization
Memory Management:
Structs are automatically managed
Classes require ARC consideration
Actors are managed similar to classes but with additional synchronization
Protocol Conformance:
All three can conform to protocols
Only classes can inherit from other classes
Actors can't inherit but can conform to protocols
Remember that you can mix and match these types in your code. For example, you might use classes for your view controllers, structs for your models, and actors for your shared services.

*/