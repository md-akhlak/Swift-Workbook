import UIKit

let greeting = "Hello world"
let otherGreeting = "Salutations"

let joke = "why did the chicken cross the house want to ea"


//let greetingProgram = "its a tradational programming to print \"hello, world!\""

//let greetingProgram = "its a tradational programming to print \\hello, world!"

//let greetingProgram = "its a tradational programming to print \thello, world!"

let greetingProgram = "its a tradational programming to print \n hello, world!"

var myString = ""

if myString.isEmpty{
    print("The string is empty")
}

let a = "hello"
let b = "world"
var myStr = a + b
print(myStr)

myStr += "Hello"
print(myStr)


//interpolation

//let name = "john"
let age = 20

//print("name is : \(name) and age is : \(age)")

let x = 10
let y = 2

let extractString = "hello I'm Md Akhlak"
print(extractString.prefix(5))
print(extractString.suffix(6))


print("is x is : \(x) and y is : \(y) the x/y = \(x/y)")


let greet = "hii rick, my name is any"
if greet.contains("my name is"){
    print("present")
}

let countString = "md akhlak"
let length = countString.count
print(length)


let someChar : Character = "a"

switch someChar{
case "a","e","i","o","u":
    print("\(someChar) is vowels")
default:
    print("\(someChar) is not vowel")
}


//1
var name = "Akhlak"
let revStr = name.reversed()
print(String(revStr))

print(name.uppercased())
print(name.lowercased())

//2
let simpleString = "hello everyone"
print("greet msg is \(simpleString)")


//3
let myStrings = "hello my name is md akhlak"
if myStrings.contains("my name"){
    print("\(myStrings) contains this \"my name\"")
}


//4
let str = "Hello my name is Sam"
print(str.count)

let indexStart = str.index(str.startIndex, offsetBy: 17)
let indexEnd = str.index(str.startIndex, offsetBy: 20)

let substring = str[indexStart..<indexEnd]
print(substring)


