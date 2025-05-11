//: [Previous](@previous)

import Foundation

var greeting = "Solution: Dictionaries in Swift"

var weeklyTemperatures: [String: Int] = [
    "Monday": 70,
    "Tuesday": 75,
    "Wednesday": 80,
    "Thursday": 85,
    "Friday": 90,
    "Saturday": 95,
]

// This will crash the program because "Sunday" doesn't exist in the dictionary
// weeklyTemperatures["Sunday"]!  // This line would cause a runtime error

// Safe way to access dictionary values
if let sundayTemp = weeklyTemperatures["Sunday"] {
    print("Sunday's temperature is \(sundayTemp)°F")
} else {
    print("No temperature recorded for Sunday")
}

// Using nil coalescing operator (safer alternative)
let sundayTemp = weeklyTemperatures["Sunday"] ?? 0
print("Sunday's temperature is \(sundayTemp)°F")

//Step 3: Update and evaluate the first day's temperature
//Using the addition assignment operator and the forced unwrapping operator to modify a value inside the dictionary.
weeklyTemperatures["Monday"]! += 20  // Increase Monday's temperature by 10 degrees
print("The temprature on Monday is \(weeklyTemperatures["Monday"]!) F.")


//Step 4: Add a new key-value pair
if let temprature = weeklyTemperatures["Sunday"] {
    print("The temprature on Sunday is \(temprature) F.")
} else {
    weeklyTemperatures["Sunday"] = 100
    print("The temprature on Sunday is \(weeklyTemperatures["Sunday"]!) F.")
}

//Step 5: Reset the dictionary for a new week
if weeklyTemperatures.count == 7 {
    print("You have access to the weather forecast of the whole week.")
}
weeklyTemperatures = [:]
print("Reset weekly temperatures for next week!")



// Print the temperatures
print("Weekly Temperatures:")
for (day, temperature) in weeklyTemperatures {
    print("\(day): \(temperature)°F")
}

// Method 2: Using Dictionary initializer
var weeklyTemperatures2 = Dictionary<String, Int>()

// Adding values to the dictionary
weeklyTemperatures2["Monday"] = 72
weeklyTemperatures2["Tuesday"] = 74
weeklyTemperatures2["Wednesday"] = 70
weeklyTemperatures2["Thursday"] = 68
weeklyTemperatures2["Friday"] = 75
weeklyTemperatures2["Saturday"] = 78
weeklyTemperatures2["Sunday"] = 76

// Accessing values
print("Monday's temperature: \(weeklyTemperatures["Monday"] ?? 0)°F")
print("Tuesday's temperature: \(weeklyTemperatures["Tuesday"] ?? 0)°F")

// Updating a value
weeklyTemperatures2["Monday"] = 73

// Checking if a key exists
if let temperature = weeklyTemperatures["Monday"] {
    print("Monday's temperature is \(temperature)°F")
} else {
    print("No temperature recorded for Monday")
}

// Iterating through the dictionary
print("\nWeekly Temperature Report:")
for (day, temperature) in weeklyTemperatures {
    print("\(day): \(temperature)°F")
}

// Getting all keys or values
let days = Array(weeklyTemperatures.keys)
let temperatures = Array(weeklyTemperatures.values)

// Finding the highest and lowest temperatures
if let maxTemp = weeklyTemperatures.values.max(),
   let minTemp = weeklyTemperatures.values.min() {
    print("\nHighest temperature: \(maxTemp)°F")
    print("Lowest temperature: \(minTemp)°F")
}

