//
//  main.swift
//  SwiftTutorial
//
//  Created by Leo on 15/04/15.
//  Copyright (c) 2015 Leonardo Cappuccio. All rights reserved.
//

import Foundation

println("Hello, World!")

// SIMPLE VALUES
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