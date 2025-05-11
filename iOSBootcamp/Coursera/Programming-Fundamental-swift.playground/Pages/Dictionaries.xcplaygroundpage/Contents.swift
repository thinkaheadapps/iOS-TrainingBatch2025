//: [Previous](@previous)

import Foundation

var greeting = "Dictionaries"

var travelMiles: Dictionary<String,Int> = ["Richie": 500, "Peter" : 400, "Amy": 800]

let itemCount = travelMiles.count
print(itemCount)

//empty dictionary

var emptyDict = Dictionary<String, String>()
print(emptyDict.count)


//Add item to dictionary
travelMiles["Devid"] = 700
print(travelMiles)

//retrive an item
if let travellerMiles = travelMiles["Peter"] {
    print(travellerMiles)
}
else {
    print("Item Not found")
}

// Chang an itam

travelMiles["Peter"] = 1000
print(travelMiles)

//Update value

if let oldValue = travelMiles.updateValue(100, forKey: "Peter") {
    print(oldValue)
}
else {
    print("Item not found")
}

//delete item
travelMiles.removeValue(forKey: "Peter")
print(travelMiles)

