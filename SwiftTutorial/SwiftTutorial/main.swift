//
//  main.swift
//  SwiftTutorial
//
//  Created by Leo on 15/04/15.
//  Copyright (c) 2015 Leonardo Cappuccio. All rights reserved.
//

import Foundation

println("Hello, World!")

// Simple values
var myVariable = 42
// Cast to String
println("Using var " + String(myVariable))
myVariable = 50
// Or use compact notation
println("Clean  \(myVariable)")
let myConstant = 42
println("Constant \(myConstant)")

// Otherwise specify type explicitly
let implicitInteger = 70
println("Integer \(implicitInteger)")
let implicitDouble = 10.0
println("Integer \(implicitDouble)")
let explicitDouble: Double = 70.5
println("Integer \(explicitDouble)")

// Create a Float constant
let explicitFloat: Float = 4
println("Float \(explicitFloat)")

// Types are never implicitly converted, to do so convert explicitly
let label = "The value is "
let someValue = 111
let myLabel = label + String(someValue)
println(myLabel)

// To include values in string
let apples = 3
let oranges = 5
let totalFruits = "I have \(apples + oranges) fruits!"
println(totalFruits)
// Now with type casting
let pi = 3.14159
let radius = 10
// cast radius to Double is mandatory
let circleLenght = (2 * pi) * Double(radius)
println("Circle \(circleLenght)")

// Now play with arrays
var shoppingList = ["fish", "water", "bread", "ham"]
println("Second item to buy is \(shoppingList[1])")
// Now a dictionary
var jobs = ["John": "Plumber", "Steve": "Mechanic"]
println("Have \(jobs.count) jobs")
jobs["Leo"] = "Nerd"
println("Now have \(jobs.count) jobs")
// And a for cycle
for (workerName,job) in jobs {
    println("Worker: \(workerName), Job: \(job)")
}

// Optional values and nil
var optionalName: String? = "Leo"
var greeting = "Hello"
if let name = optionalName {
    println("\(greeting) \(name)")
}
// Now set to nil
optionalName = nil
if let name = optionalName {
    println("\(greeting) \(name)")
}

// Play with case, default is mandatory
let colour = "Red"
switch colour {
    case "Yellow": println("Yellow is nice")
    case "Black": println("Black is elegant")
    case "Red": println("Red is hot")
default: println("No colour defined")
}

// Array of arrays and for-in
let interestingNumbers = [
    "Square": [1,4,8,9,16,25],
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8]
]
var largest = 0
for (numberType, numberValues) in interestingNumbers {
    for numberValue in numberValues {
        if numberValue > largest {
            largest = numberValue
        }
    }
}
println("Largest is \(largest)")

// A simple while
var x = 0
while x < 10 {
    print("x = \(x)\t")
    x++
}
print("\n")
// Or
var y = 0
do {
    print("y = \(y)\t")
    y++
} while y < 10
print("\n")

// Some nice for(s)
var firstLoop = 0
for i in 0..<4 {
    firstLoop += i
}
println("firstLoop is \(firstLoop)")
// "..<" omits upper value, "..." includes both values
var otherFirstLoop = 0
for i in 0...4 {
    otherFirstLoop += i
}
println("otherFirstLoop is \(otherFirstLoop)")
// Or
var secondLoop = 0
for var i = 0; i < 4; i++ {
    secondLoop += i
}
println("secondLoop is \(secondLoop)")