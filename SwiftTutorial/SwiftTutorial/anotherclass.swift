//
//  AnotherClass.swift
//  SwiftTutorial
//
//  Created by Leo on 16/04/15.
//  Copyright (c) 2015 Leonardo Cappuccio. All rights reserved.
//

class AnotherClass {
    
    var someNumber = 0
    
    func simpleIncrementer() -> String {
        someNumber += 1
        return "\(someNumber)"
    }
}