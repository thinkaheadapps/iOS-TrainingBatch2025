//: [Previous](@previous)

import Foundation

var greeting = "Reference types and value types"

class Recipe {
  var ingredients: [String]
  init(ingredients: [String]) {
    self.ingredients = ingredients
  }
}
var marioRecipe = Recipe(
  ingredients: ["Cocoa powder", "Flour"]
)
var adrianRecipe = marioRecipe
adrianRecipe.ingredients = ["Chocolate chip"]

print(marioRecipe.ingredients)
