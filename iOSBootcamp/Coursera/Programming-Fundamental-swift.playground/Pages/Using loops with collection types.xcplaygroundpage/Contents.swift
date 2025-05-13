import Foundation

// Create a dictionary to store weekly temperatures
print("Using loops with collection types")

let names = ["Harry","Lucas","Nicola"]

// for in loop
for name in names {
    print("Name: \(name)")
}

//Dictioray

//let vehicles = [String:Int] = [:]
let vechiles = ["Unicycle": 1, "Motorcycle":2,"Relient Robin":3, "Car":4]

for(vechicalName, vechicalCount) in vechiles {
    
    print("There are \(vechicalName) \(vechicalCount) in list.")
}


