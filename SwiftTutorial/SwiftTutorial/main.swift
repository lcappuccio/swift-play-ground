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

