//: [Previous](@previous)

import Foundation

var greeting = "Creating classes with stored and computed properties"

Class Menu {
    let mains: [String] = []
    let drinks: [String] = []
    let deserts: [String] = []
    
    
    init(
        mains : [String],
        drinks : [String],
        deserts : [String]
    ) {
        self.mains = mains
        self.drinks = drinks
        self.deserts = deserts
    }
}


