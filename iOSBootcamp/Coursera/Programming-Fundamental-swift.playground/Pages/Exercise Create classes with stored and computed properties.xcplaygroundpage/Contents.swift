//: [Previous](@previous)

import Foundation

var greeting = "Exercise Create classes with stored and computed properties"

//Step 1: Create a class to represent a local file with two stored properties
class LocalFile {
    
  let name: String
  let fileExtension: String
  //Step 2: Declare an init method to be able to initialize the class later
  init(name: String, fileExtension: String) {
      self.name = name
      self.fileExtension = fileExtension
  }
  //Step 3: Create a computed property that returns a full file name
   
    var fullFileName: String {
      return name + "." + fileExtension
    }
}


let file = LocalFile(name: "image", fileExtension: "png")
print(file.fullFileName)


