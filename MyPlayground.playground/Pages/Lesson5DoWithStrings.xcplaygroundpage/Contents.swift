import Foundation

var greeting = "Do with string"

// MARK: String

let name = "Tim"
let username = "Cook"

// MARK: Concantenation

var fullName = name + " " + username
var hello = "Hello, my name is "
hello += fullName

print(fullName)

// MARK: Interpolation

fullName = "Bob Johnson"
var information = "\(hello) \(fullName)"

let a = 5
let b = 10
let infoAboutSum = "The sum of a and b is \(a + b)"

let multithreadString =
"""
 some text
  some text
   some text
"""

print(multithreadString)

