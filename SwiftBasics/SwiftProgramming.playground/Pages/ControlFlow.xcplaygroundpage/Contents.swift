//: [Previous](@previous)

import Foundation

let individualScores = [75, 43, 103, 87,12]
var teamScore = 0

let count = individualScores.count
for score in individualScores {
    if score < 50 {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}

print("TeamScore =\(teamScore)")


//Optional
var optionalString: String? = "Hello"
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
