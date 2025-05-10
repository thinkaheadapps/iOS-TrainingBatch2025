//: [Previous](@previous)

import Foundation

var greeting = "Nested loops, break and continue"
//outer for loop
for i in 1...5 {
    print("i: \(i)")
    //inner for loop
    for j in 1...10 {
        print("J : \(j)")
    }
}

var x = 1

while(x <= 5) {
    print("X: \(x)")
    
    //inner while
    var y = 1
    while (y <= 5) {
       print("Y: \(y)")
        y += 1
    }
    x += 1
}

var month = 1

//while(month < 4) {
//    print("month: \(month)")
//    
//    //inner while
//    var m = 1
//    while(m <= 4){
//        print("Var M \(m)")
//        m += 1
//    }
//    month += 1
//}

//Break and continue
//Break Keyword used to break the flow of a loop immediately

//if break is inside the inner loop - it will exit inner loop

while(month < 4) {
    print("month: \(month)")
    
    //inner while
    var m = 1
    while(m <= 4){
        if(m == 3) {
           // break    // it will break at given condition
            continue
        }
        print("Var M \(m)")
        m += 1
    }
    month += 1
}







