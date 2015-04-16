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

// Functions and closures
func sayHi(name: String, title: String) -> String {
    return "Hello \(title)\(name) "
}
println(sayHi("Leo", "Mr."))
// Can return also tuples (nice!)
func calculateStatistics(values: [Int]) -> (min: Int, max: Int, sum: Int, average: Float) {
    var min = values[0]
    var max = values[0]
    var sum = 0
    var average: Float = 0
    
    for value in values {
        if value > max {
            max = value
        }
        if value < min {
            min = value
        }
        sum += value
        // Note the type casting :O
        average = Float(sum) / Float(values.count)
    }
    return (min, max, sum, average)
}
let statistics = calculateStatistics([3,6,8,5,3,15])
println("min: \(statistics.min)\tmax: \(statistics.max)\tsum: \(statistics.sum)\taverage: \(statistics.average)")

// Nested function
func returnNumber() -> Int {
    var y = 1
    func add() {
        y += 1
    }
    add()
    return y
}
println("Nested function value is \(returnNumber())")

// Functions can return functions
func incrementBuilder() -> (Int -> Int) {
    func increment(number: Int) -> Int {
        return 1 + number
    }
    return increment
}
var incrementer = incrementBuilder()
var incrementedNumber = incrementer(5)
println("incrementer \(incrementedNumber)")

// Class instance
var anotherClass = AnotherClass()
for var i = 0; i < 10; i++ {
    println("Class is now \(anotherClass.simpleIncrementer())")
}