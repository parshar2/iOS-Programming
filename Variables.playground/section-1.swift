// Playground - noun: a place where people can play

import UIKit

typealias wholeNumber = Int

var num : wholeNumber = 100

// Camel case instead of _ -> first_integer
var firstInteger = 0, secondInteger = 29
var firstDouble = 1.99


// Type annotation
var x : Int = 19
var y : Double = 1.99
var name : String = "Parikshit Sharma"

// Makes large number readable <Numeric Literal>
var largeNumber = 1_000_000_000_000

name.uppercaseString
name.lowercaseString
"!" + " " + name

/************ Convert number to string **************/
var xString = "\(x)"
var xWrongString = xString + "a"

// Convert string to Int optional
xString.toInt()
xWrongString.toInt()    // nil since it is not a number
xString.toInt()!        // Int has been unwrapped
// xWrongString.toInt()!   // give will an exception
var doubleString = "3.4354"

var doubleFromString = Double((doubleString as NSString).doubleValue)


/************** Shorthand ***************/
 x += 3     // Works for +, -, *, /
 name += " Sharma"
 
 
 
 /************** Constants ***************/
let String1 = "Hello World"     // Can't change its value

 







