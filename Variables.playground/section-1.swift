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

 

/************** Control flow **************/

var truckSpeed = 45
var lamboSpeed = 120
var mySpeed : Int
mySpeed = 80

if (mySpeed < 70) {
    println("Keep Cruising")
}
else if mySpeed < 90 {
        println("Mind your speed")
}
else {
    println("Slow down police ahead")
}


let isTelevisionOn = true
if isTelevisionOn   {
    println("Make sure to turn it off when done")
}
else {
    println("Do you want to use it now?")
}

/************ Numeric type conversion *************/
var intValue = 5
var doubleValue = 0.5

// using struct named double to convert int to double
var sumofValues  = Double(intValue)  + doubleValue

var secondSum = intValue + Int(doubleValue)


/************* Loops *****************/

var meditationHours = 1
for meditationHours; meditationHours < 100; meditationHours++ {
    println("I am getting more enlightened")
}

//This code runs out of memory to store the Int value of wheat
/*var wheat = 1
for var i = 0; i < 64; i++ {
    wheat = wheat * 2
    println("location on board : \(i) and pieces of wheat : \(wheat)")
}*/


/****************** ARRAYS **********************/

var tigerNames:Array<String> = []

var tigeressNames:[String] = []

var emptyArray = [String]()
var emptyDictionary = [String : Float]()


var tigresNames = ["Tigger","Tigress","Jacob","Spar"]
var tigerAges = [1,2,3,4]

if tigerNames.isEmpty {
    println("There are no elements in this array")
}
else {
    println("There are elements in this array")
}

println(tigerAges.count)
println(tigerNames.count)

let firstNameFromArray = tigresNames[0]


for names in tigresNames {
    println(names)
}

for tigerNumber in 1...3 {
    println(tigerNumber)
}



var nums = 1...5

for num in nums {
    println(num)
}

// access index and element at the same time
for (index, tigerName) in enumerate(tigresNames) {
    println(" index : \(index) tigerName : \(tigerName)")
}

// Mutability of arrays

tigresNames.append("Jacob")
tigresNames.count
tigresNames += ["John","Eliot"]
println(tigresNames)
tigresNames[1] = "Spar"
println(tigresNames)
tigresNames[0...2] = ["Katy","James","George"]
println(tigresNames)

tigresNames.insert("Julie", atIndex: 1)
tigresNames.removeRange(0...2)
println(tigresNames)

tigresNames.removeAll(keepCapacity: false)

/****************** Generating a random number *************/

// Random number from 0-4
let randomNumber = Int(arc4random_uniform(UInt32(5)))


/******************* While and Do While *******************/

x = 5
while x < 10 {
    println(x)
    x++
}

y = 10

do {
println(y)
y--
} while y > 0

/******************** Functions *************************/

func printHelloWorld() {
    println("Hello World")
}

printHelloWorld()

func printNumberSupplied(number : Int) {
    println("The number is \(number)")
    println("The number times 3 is : \(number * 3)")
}

printNumberSupplied(10)
printNumberSupplied(3)

func turnOffAppliance( applianceName : String , isOn : Bool) {
    if isOn {
        println("Please turn off \(applianceName)")
    }
    else {
        println("I actually turned off the \(applianceName) already")
    }
    
}

turnOffAppliance("Fridge", true)


// Functions that return a value
func additionFunction(firstArgument : Int, secondArgument : Int) -> Int {
    return firstArgument + secondArgument
}


additionFunction(2, 3)


/************** Optionals ****************/

//“You can use if and let together to work with values that might be missing. These values are represented as optionals. An optional value either contains a value or contains nil to indicate that the value is missing. Write a question mark (?) after the type of a value to mark the value as optional.

var optionalString : String? = "5"

optionalString == nil

var optionalName : String? = "Parikshit"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}


// Passing a variable number of arguments
func average (numbers : Int...) -> Double {
    var sum : Int = 0
    var count : Int = 0
    
    for number in numbers {
        sum += number
        count++
    }
    
    let average:Double = Double(sum) / Double(count)
    return average
}



average(12,43,53,21,43,64)


// Passing functions as arguments
func isSumFive (num1 : Int, num2 : Int, checkSum : (Int, Int) -> Bool) -> Bool {
    return checkSum(num1, num2)
}

func checkSum (num1 : Int, num2 : Int) -> Bool {
    let sum = num1 + num2
    return sum == Int(5)
}

isSumFive(3, 2, checkSum)



var parikshit , sharma : Int

parikshit = 5
sharma = 10

let Dog = "smiley"


println("Hello! Wake up")

let myTuple = (1,"Parikshit",3.0)
println(myTuple.0)
println(myTuple.1)

let myNamedTuple = (SNo : 1, Name : "Parikshit", marks : 3.0)
println(myNamedTuple.SNo)




var numTimes = 10
var data = [1...10]

for i in data {
    println(i)
}



/***************** Switch statement *****************/

x = 4

switch x {
case 1 :
    println("The value of x is 1")
case 2:
    println("The values of x is 2")
case 3,4:
    println("The values of x is 3 or 4")
default:
    println("Default value printed")
}


















